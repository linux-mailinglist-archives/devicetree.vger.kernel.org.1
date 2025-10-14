Return-Path: <devicetree+bounces-226425-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id AC701BD89A6
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 11:59:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 6F4874E28BE
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 09:59:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DFEEF2EBB9D;
	Tue, 14 Oct 2025 09:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="gcBtrU98"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FA0A2E62D4
	for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 09:58:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760435933; cv=none; b=VsfamnMs7aWVO3E63MvkwgLfNB8mQUL5Qr2L2o69vDE47hn7flS2tpxqjPIW64onWSCYyjk1cr6mAh9rqOx42diekGTf5RisE4W6gsUDGw/kOFJEwwwkK1R8Z+vdvLx8VfU1pTDMuSRuesG2UiWGXg2NHfKfce6tPR9y85F/LhE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760435933; c=relaxed/simple;
	bh=io6QOTrYaDE9s028FeLKTAMlnHfbHghqFVrGpVGtXBk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=LVHwnl00yUEggP+ufdTlRsbD7M3dMHAnVHZCIyDJcpb34kEycnk+blk9MCvPl0OKrKekUi4lb9vqjL3jSESqzgn2TAy3DBGfe0E6MN1/EJp/DH+u9lqWlgWyp8QOD54S0iuUPey5LU1wqRFPFZZAytWbnfj/gmevDbZwLeReWpc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=gcBtrU98; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59E87KHv020009
	for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 09:58:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	DSMjHDTClxj+PalxEbTH9ZRHAQzCK5GT1sDSL01c+XQ=; b=gcBtrU98KIZEpLYh
	ajS7NMK8LRgG2D3spy3qGrrfnkkdBYIZaAY7ZXf/4p9xO+iwPdYfho5g9lGnf+0m
	2PNHN9hKwSOo5WbbPBEqNNiTmhrjNmMrrsUNogN8xwe8jkrf031Dde1xt9xcE25V
	k5thqj+03KxurUwL+ALqPlQTD4tvmNs+PLvWilI14lcRE1bPR3Sx6QfBQ+Q7Tp2v
	bJauW+nyoYomBwYxqq9XNWlXA6PqSAdhy5b+QC6ochfNjmtB3CW4qSAhLLT9CdtE
	33v//0+v9u4MVjS+CHR7RQdaL0QL1bRQD9RiNV0VlBcSDu81z0ZGFPwyvMj14McY
	VTUsCg==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49qg0byynt-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 09:58:51 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-85696c12803so376930085a.2
        for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 02:58:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760435930; x=1761040730;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=DSMjHDTClxj+PalxEbTH9ZRHAQzCK5GT1sDSL01c+XQ=;
        b=pwmPgTjtZDtGAhXUZJf1nGzAJZ6bCv/1tnnzaqd8SRPzLCdkDgZTGfc3nkRv0Kz8bP
         xDql613fs5M49wnM5KCIvqSerRMr5q9LsXpO4yxl2QsPiycLyHgxZpzCd6NL5csOjtcI
         kVXTrmyMDZ7hyxR3CdZ4gwj19H5y11ldfydiY1c3CCx0cbBNB0lnibLomWWPlhcDTM4r
         y7pkUyGNmaxyGtS8w3ZdaXiJGYC4LdzdmkSonynp4MmX7rLaMclcH9SCCMwS2W6KihL4
         sXsKxbLyZk/udbgh+84hSmDaCvvQo750SDO2oJmfWn5NpGZqW/KlPdmk3//DlaFgKlNq
         L1xA==
X-Forwarded-Encrypted: i=1; AJvYcCWq+JvUBSyTR5QW0Zb/d4kRFAlEfmeUs25my+oTdE0jpmQ9wTx+SHqeYa6Shm7GSRPm0gRBnz8gEt/H@vger.kernel.org
X-Gm-Message-State: AOJu0YxQ7iBcszp2IxFbBovjOAGLPdxvhoVg3tZxj77dy1ArN8xcMEPV
	8zosYKlgLuxZPtsNi1b4xcHxQK4wuMJWnixBuzJKxfWJohmDyLacY6upMuuUJibNtoHiS5FMXQL
	ISwPAzDZzMha4AucW+Pb1PhzJ45BllxhL8jZ45IWgznm3aqZym49T8D0Q7XksHOXi
X-Gm-Gg: ASbGnctLTK4tbmy4r8z98qc87BzVJep4Als8KQRCKx4uafw6a066GJoyAW5q2HKtywk
	0+2xBoJY5xSgkDS1gO4WvCodiHfs5d4AeZgcLl0Gj+aV7LZsk+GKlDna+u/ZqxckkjSBGkdyfD9
	nHQwyzsWhoHF0URtw3HkmBW5rsQMu9a85pGIlNki4LnGA7GpWaGraTVdS/L8ynd9PB9Ipl7X8Y0
	xDvdKpYlk/clBuTqitJKRkIBUoXr12rJjZjkd4ATkr7VFeXzWJ1iCGkWPtTbaHK2UEVHi3ZPSag
	qx99hhqMBcFYCTVZxquKYlsgQ998D98JjsRymYYpvfx4xO1f6ut9dXbkikHRXIB/OtA2l22MqBc
	ZhDrzGY6TPVkgriqg64Xs5A==
X-Received: by 2002:a05:620a:17a7:b0:812:81c6:266c with SMTP id af79cd13be357-8835420965cmr1951154085a.9.1760435930142;
        Tue, 14 Oct 2025 02:58:50 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG7NHtM1Gsh82E8FOY9EtkI41PKGeex0f4/Fw4cwVtCr7GMZQ8YGlpxMTjOqOvo/5wbIBEfeA==
X-Received: by 2002:a05:620a:17a7:b0:812:81c6:266c with SMTP id af79cd13be357-8835420965cmr1951152485a.9.1760435929662;
        Tue, 14 Oct 2025 02:58:49 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-63a5c133feasm11078988a12.35.2025.10.14.02.58.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Oct 2025 02:58:49 -0700 (PDT)
Message-ID: <91113d48-a8ef-4a24-a73f-6d32ac271a00@oss.qualcomm.com>
Date: Tue, 14 Oct 2025 11:58:47 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 0/6] arm64: dts: qcom: r0q: enable more peripherals
To: =?UTF-8?Q?Eric_Gon=C3=A7alves?= <ghatto404@gmail.com>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Bjorn Andersson
 <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20251014044135.177210-1-ghatto404@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251014044135.177210-1-ghatto404@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: KxukhcQEilazSWTuywjE7lE49CIIzZSa
X-Proofpoint-ORIG-GUID: KxukhcQEilazSWTuywjE7lE49CIIzZSa
X-Authority-Analysis: v=2.4 cv=eaIwvrEH c=1 sm=1 tr=0 ts=68ee1edb cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=NEAV23lmAAAA:8 a=Ar6MW_cJkJo_tvb_ExEA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDExMDAyMiBTYWx0ZWRfX8D/I2qkkZahr
 wJAdyU9YuKuvOET3vfiPWFllieOV6JawP5h7mj5huhCIWjZGLrAxp4j82IeU0WV9rA19c3nt7cn
 d43HQTAALzPz9zjH7+m2R4ZFyXoxTUbSJuO9gFHt7xOvrFPb8QasLRPiA3pSRxspMP7vEA0Y7/A
 G9a+Js8gazy+TjpwMjNV2mruER7pxAs5IAh2bbGd2G/LVPqyOeqGdAURDoCaGYBzxf7h3moFCd/
 5kKheSoqdK9xJcOhw6VvBv0e8VP0g/U17rZ6xNXvSXp+/GV8RUe3XMgrkHKX00vxje9hk6HbgHx
 bjd0cq/4dWkdtrkf2oKPA1CbYpuMRkiOrpNqVepeGIpmI3CJEfS63c7lh0doZ8Nyob7CRZKIcJp
 qsNF5DwjPH959sjGfjUI90wGwo+eSg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-14_02,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 priorityscore=1501 spamscore=0 impostorscore=0 phishscore=0
 adultscore=0 lowpriorityscore=0 clxscore=1015 suspectscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510110022

On 10/14/25 6:41 AM, Eric Gonçalves wrote:
> This patchset adds support for multiple devices found on the Galaxy S22,
> side buttons, touchscreen, max77705 charger/fuelgauge, RTC and UFS. It
> depends on "Input: add support for the STM FTS2BA61Y touchscreen" for
> TS to be enabled - and for the fuelgauge/charger to work,
> "mfd: max77705: support revision 0x2" is needed too.
> 
> Thanks!
> 
> Changes in v2:
> - split the gpio keys patch into 2 for small refactor
> - rename spi-gpio: spi-gpio@0 to spi8
> - use tabs instead of spaces on max77705 nodes
> - added new patch that fixes adsp_mem and video_mem memory regions
> I couldn't find the clock-frequency for i2c5 bus :(

You can boot downstram and run debugcc to dump the current state
(incl. rates) of all clocks

https://github.com/linux-msm/debugcc

Or /sys/kernel/debug/clk/gcc_name_of_the_clock/clk_rate

may also give you a good result, although YMMV

Konrad

