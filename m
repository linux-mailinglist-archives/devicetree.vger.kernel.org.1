Return-Path: <devicetree+bounces-226435-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id A72F5BD8A07
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 12:02:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 264E43522F1
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 10:02:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A1B292989B0;
	Tue, 14 Oct 2025 10:02:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="m/+6nKNL"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B8142F5A1F
	for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 10:02:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760436135; cv=none; b=aEmXR982jCLMxbrGF93xbOr8RkdGXswKhDUtUr/uLd+XP49u4aK0QddX2sxJknjtmUR9G3a/ZIM2vZ9sI2DEXrsHqLEqJ4KOjqAIQ6/KzK0EQWlvsfQPEIM9H6c+5jGV4YKU75+AOTeA//xr5KFips+mCj2CM46QYdmluReSkS8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760436135; c=relaxed/simple;
	bh=KtcuDDpfkcmM1QwJQ873CWBxDwjgKZ5Wz7P9Hq/NKJU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=VKbQQUvN/j6BWxu2YZ53GHdOjZ+QZ1qMMqWosvS/PIZH+cuJcOAcNT+NeLiggh5jIy1S8O35I0ahsUPLB31GCSzU4eqbb/qZedcmi4biNCNma9IOwuXXHfLRbn8Fw/gktk5GEtbS0NF0LW1q/nR+OwDeuQRtSOVlnW0ZwJhUh/A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=m/+6nKNL; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59E87Wrx009288
	for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 10:02:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	7/bIQQMaDnARFreue2R/gE7kO5t8Efqe56u/lRw1p20=; b=m/+6nKNLIScw23oi
	LOxx+npLl5gAFXC13iRUC249EtQCq/QJFZHJ1x5Muw6pzZcV7GeBdcuEtLN/X0pG
	MOkr5c2B+t2qor3X0HR/sFXZjgYNRMPgAvg3ByDopVYx8HUEvoW6PVVcbYXYghG0
	tQpmVkC53hJ09r+5XlgaIAqGsEyIGfMf3RsK1xJTnqif+noz5um828Flt83Vas4R
	5V1Sdq2Fb9tVUcvR0BULboPTNftI0pWWvW5KTOt8L0TYWvs58f8Wt5kI3AvJcroE
	3Bp+XvODijGQnz/qRsxVDIxiaEUYdGr9zvwbtqvh34OsXpIWhQ6hyZZj2AhmbbTZ
	rlPoiw==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49rtrt4ue7-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 10:02:12 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8643fb24cafso220937685a.1
        for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 03:02:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760436132; x=1761040932;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=7/bIQQMaDnARFreue2R/gE7kO5t8Efqe56u/lRw1p20=;
        b=ghLJ8cvV7ikBOCKl4d+Yk4VSzhPmmmZW2eMp9FpxSgEbsHajx1vvetFxWOrwU5vmS+
         tKgFzn9OVsflXf5uvSnhkYD0aA0dt1G6XzK2pyRfuMNkfmZF8Y8vF1n+ALucb/ShMVes
         D7zy/nM1BwpAr5sYQjWrEExy82lz9VG1Lh0DbCpXefCpe3i/MBczlwwC7lL1+NHO61rj
         vCj/hQP1LPdYDbAx08d8O1oMAkYBzZyiph1Lio4aEN4NOY/3mqJwSEQNapWSefDqqtwD
         zfUTlhdcrEPuP707UYsKX6s1qTZDanAgZQJNmOG+ICdmw/4dyH/tQ1OiGTVUQnVcllmd
         5fVA==
X-Forwarded-Encrypted: i=1; AJvYcCWjXn/wmtjqO7w7geEojloidJZ9oEc8JQVnOiNVww26C4GtljVIGc0vxPgOtrC6s/q0OhjZL3IjA3XA@vger.kernel.org
X-Gm-Message-State: AOJu0Yz0NBwMjIMzDRNJXG/REpD4n3BHM4Jy0Yh1afhsDyLAtvJ80wSp
	bESPxJSBtjKR7H79ud3kaPzgKlmeycudRhODA4hVxcN+k9FDPlE5y2NoPSIk1q7sXbihB76HLwf
	HoJApVc14dlAkdW953QVaMVAMtDFyiH1joBrAgLQ887MAGb9RvMPa6EHBDL+6uwdc
X-Gm-Gg: ASbGncujJUCb9pY+UVuxvYuH3RGoM3zU5CYNPOyfkPPsJkeh8qB2Xdy4HwHjmSsRUGd
	vouow5TwayR3g/UAURQ2wBviKItWESRxLvj+TjGhbjah890uSbpRONPv9eVXvYhAS6Ih6xA6Jwf
	IlLhfGDFapgbHf+ATZw9OVwtV/8WMryhsr8gfTIclwXyPKkQIlJOa/6N5pnqQy9Nhs0OnMDGy2D
	KjQPpn9zylNfOOUH1UmNXQP4x7eANv5EKugFS+/vp25ZAaOerFfmw699y54qBQYmalDTpk/upvy
	H/kC6zzxKmTRrbixwwHPaXeqDT5EqL0LLegLDp4AcODgD9wcgb4fWJF1wZI0jSOTRX/yV19BNuV
	HZlcYnwMsUchCUbKP2zpPUQ==
X-Received: by 2002:a05:620a:31aa:b0:85a:4bc8:3d2d with SMTP id af79cd13be357-88351fd204emr2338068485a.8.1760436131998;
        Tue, 14 Oct 2025 03:02:11 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFjD4aGdFChwtQmJ3im0EP2dQobF8/9Gj4hhmLzpJ7xVjkxi3RQCTnH/JsERi0vATs3so/Wnw==
X-Received: by 2002:a05:620a:31aa:b0:85a:4bc8:3d2d with SMTP id af79cd13be357-88351fd204emr2338064485a.8.1760436131394;
        Tue, 14 Oct 2025 03:02:11 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-63a52b1e89csm10858228a12.19.2025.10.14.03.02.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Oct 2025 03:02:10 -0700 (PDT)
Message-ID: <226adffb-f619-4611-bd02-2123d618cb9f@oss.qualcomm.com>
Date: Tue, 14 Oct 2025 12:02:09 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 5/6] arm64: dts: qcom: r0q: enable ufs storage
To: =?UTF-8?Q?Eric_Gon=C3=A7alves?= <ghatto404@gmail.com>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Bjorn Andersson
 <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20251014044135.177210-1-ghatto404@gmail.com>
 <20251014044135.177210-6-ghatto404@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251014044135.177210-6-ghatto404@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: 3L1Zt11E5aeSyvZj1MORkJ-vPUcHyy2s
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDEzMDAyMiBTYWx0ZWRfX8N+pdurKAzOZ
 0QI6dZ9pSjch1yfJKRUQU77BWwLyHzMG4BXNPy9iqSSYs+1wVtr9+k81qvm1Rz2dC+4EirCJD0q
 PI2hCEmrQbuzcH7EtC9v1RuljxxInHIYIVmsD1/epZ9J3rzDt7Z3eXVra8YOq5PAKtm6egMK0DN
 nhJcreq0QrT3ip7024jOuyWQzsXSpqxvSVW5FqgTEDDIwcTExprUb8VrtkUpxFwkWhga9xBxRqJ
 r7uGFRaeLxmLhACcbzutWoj8QEcS9y9960fLLQGneVWkYeQfFRUwoh2Ll7bj0A0qiZLnNJtJ8/o
 LOOsRpxmdN8XKE6egxNngWLHCpoSxbFX1+bk9YGuNAALupmZIBIx/X51hY5qUeg19dWl9SPZFdl
 ge2BTFKFQcpUMytIAfL3bF2YNB92HA==
X-Authority-Analysis: v=2.4 cv=SfD6t/Ru c=1 sm=1 tr=0 ts=68ee1fa4 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=pGLkceISAAAA:8 a=EUspDBNiAAAA:8 a=3C1SsP_EkSFyRXLkilwA:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=Up9iDE1rbAkA:10 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-GUID: 3L1Zt11E5aeSyvZj1MORkJ-vPUcHyy2s
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-14_02,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 clxscore=1015 adultscore=0 phishscore=0 lowpriorityscore=0
 bulkscore=0 impostorscore=0 priorityscore=1501 spamscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510130022

On 10/14/25 6:41 AM, Eric Gonçalves wrote:
> Enable UFS internal storage of the Samsung Galaxy S22.
> 
> Signed-off-by: Eric Gonçalves <ghatto404@gmail.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

