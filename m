Return-Path: <devicetree+bounces-188466-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EB7CAAE3D20
	for <lists+devicetree@lfdr.de>; Mon, 23 Jun 2025 12:46:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B98191689E2
	for <lists+devicetree@lfdr.de>; Mon, 23 Jun 2025 10:43:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6F51123AE62;
	Mon, 23 Jun 2025 10:40:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Imre8swn"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 013E923E344
	for <devicetree@vger.kernel.org>; Mon, 23 Jun 2025 10:40:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750675228; cv=none; b=G6VnnsrRILzOdpmSNsacRt/2gS4tWJiL28cpWZh+NGn2g8RTyA6FcNFq5RdTx/RjuYldqNnldO4a9i6QZLPYqbtG5FNVyCgXLIad2lDxZQGIlPpvtjteH52fy+oClaLi5/9aDAZN1kkhVAx6VlM1sCksGwXddxkS/VmrHhSa1Ic=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750675228; c=relaxed/simple;
	bh=S1enjDC9x+Nhhk/WYVu0T/B0BKxWkP8SDj/KiC7XoZw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=oj1PLcFSu/HrkYShiFVxua8BiAx7iWSrlvpC3JiIZP3gKQQGAL4J0hImW8uXlyO9yUgY+vXFy0tSCMP++/ljhtyWqj+LYbRdi3ptae2E3BcOaRpCIpMiKa32TygV5//lWMz8yuRWF6NkVKJ5L92IvLd6H+/z2Z35kJ1N2n+PQ0s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Imre8swn; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55N9rlCG023814
	for <devicetree@vger.kernel.org>; Mon, 23 Jun 2025 10:40:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	b897uDaIaCreG4v+8lbAuOWs1ae8x9oiX94nWUbXM7E=; b=Imre8swnv/9RNJxf
	LOqQgmz6cjfuXFVVwK7wNsP+IuRXoEcGMcVo8Zun8VbHUH4+LTU3w5WDxJlfpiDX
	T8177RLm0zJyTrkRadJBU1td68p7jXoRRQfLWyXsHNKaq4gujb13tSY9bTiILiPd
	OAErLJV4DkVqB13HY8vn3Nypx15oaPLrHwI6luKKVzgOFzXOg5q0ymUlvrT3mdDd
	3Dx3mPRm22CrQSBHiy9fa+O6MjFOfQmkwj09PVGIc4DoaNs33KEGjhNu6y7MHs2E
	wYnD7l62qIhv43UqynErTdXc+y8X2UW5LmIufHr2vwVqmAcdZZlgpXxrrLS2k/DS
	K8QRtQ==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47eud09g0b-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 23 Jun 2025 10:40:24 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7d097083cc3so135770285a.3
        for <devicetree@vger.kernel.org>; Mon, 23 Jun 2025 03:40:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750675203; x=1751280003;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=b897uDaIaCreG4v+8lbAuOWs1ae8x9oiX94nWUbXM7E=;
        b=r7VYf+ynbA6mp9Dhb5nlDuGT4a6O05YfZV2mILNeav8sOzJewICDan6QQR6WskUjo/
         qH/ZkM/juKipvLoOpMfYcGyM8k4mAkFPE6HgS0MSD54hnbTmx/YW4QeQom6Yb95dUSSe
         edgBQjhNVroiaPXhgS7n+GMPo5avFnDl+mixYRNjxcCWuyiRHkyL3nj21GsEverxVXhs
         9ApvPeR0iM/Oh7A39BceXSK8kVZLNxP4Ycn6Ol/NnaYmsT8/AoRh9D8uhBTaYRGw7hjL
         0TGUPNAtEJBau+vB2QjWPr6d7PqeRs7iUVZit7OAxU1SxN5BKRrmL88l2OQ9GNhRYiru
         rvuA==
X-Forwarded-Encrypted: i=1; AJvYcCWfAUsyObLwl0nX3QuDeBRbERGLrBqJni+1VCjYAf+DFySM/XBb1uNKs7pVP+7Pqznpoh9/ohdgc5j+@vger.kernel.org
X-Gm-Message-State: AOJu0YzevWJwtfBIBumcHtRaoUDNRcWWRRZb5dq3+IgeU5lKKxqAIbvW
	kN8rRo7nqTb4wFXXOtdbqUhbsNWtFd4byfsGHJWiTcy74tD4qduH+zoBXM/U18Czx8+rJMZ7Dlq
	QiuyPYrlz7ryGDeJTeLwmXnsBMCgvlB1wetsT1liFnY/uNq8He97hZt2zm22M+5py
X-Gm-Gg: ASbGnctcPOut/HUMmQNGpzzt1kC5yDGOOAAKmYF24hSBxhv0s2BXe6Esh1C7yPvI8f7
	eiX+2FJvy9TkfjrJEA9Y/+H8S5P1PoN0SoDG39aiQVOY0x1EZC67erIre4rRpRFYpMhy4OC7NZ5
	SgpVmeD3iWoYzeXAfSfdfjnTLULcfAMLrPYTUmyAJsz7IsdE+5SndcdeWddj4xautH9JwJv07pU
	5hcrCHTGJvbnI4crf4RD+af8keqDf4F5iyT3Rkm58WBA/qgQwwqkozyFHzQKZioOoD5p/BNi0zY
	NH7qEYyUaYKmWZxcZAIuKg7lcHtQEjuPf7OZ4uEyUgLT4WYWqQvqeHCpGTJhhK+Ali4M7mc+rAj
	t8no=
X-Received: by 2002:a05:620a:192a:b0:7c0:add8:1736 with SMTP id af79cd13be357-7d3f9952489mr622002985a.13.1750675203238;
        Mon, 23 Jun 2025 03:40:03 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGtQAJnnfKFDS6GPSBOdzMDOqFNoCOeLhMyFw5pPwCYvVfetkYScS3ixGZVRWzJvTvaV87slw==
X-Received: by 2002:a05:620a:192a:b0:7c0:add8:1736 with SMTP id af79cd13be357-7d3f9952489mr622000685a.13.1750675202761;
        Mon, 23 Jun 2025 03:40:02 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae0541bcec5sm694809466b.143.2025.06.23.03.40.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Jun 2025 03:40:02 -0700 (PDT)
Message-ID: <595e2c2c-8c85-45d7-bba1-5d7765e60e5a@oss.qualcomm.com>
Date: Mon, 23 Jun 2025 12:39:59 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/5] ARM: dts: qcom: msm8960: add gsbi8 and its serial
 configuration
To: Antony Kurniawan Soemardi <linux@smankusors.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Max Shevchenko <wctrl@proton.me>,
        Rudraksha Gupta <guptarud@gmail.com>
References: <20250623-msm8960-sdcard-v2-0-340a5e8f7df0@smankusors.com>
 <20250623-msm8960-sdcard-v2-2-340a5e8f7df0@smankusors.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250623-msm8960-sdcard-v2-2-340a5e8f7df0@smankusors.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: yhjJ6YRxMeiqyDgvxKBdKVyVHws2iN6h
X-Proofpoint-ORIG-GUID: yhjJ6YRxMeiqyDgvxKBdKVyVHws2iN6h
X-Authority-Analysis: v=2.4 cv=eco9f6EH c=1 sm=1 tr=0 ts=68592f19 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=wxLWbCv9AAAA:8 a=EUspDBNiAAAA:8
 a=v7w6ZsX0F0Nrasn4spMA:9 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22
 a=QJY96suAAestDpCc5Gi9:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjIzMDA2NCBTYWx0ZWRfX+ovUCs9eyW8K
 ulUL0iLi8O7tJFceSM/kMP0pEo+XcIgyilddKsglda/5I62oGq63SLVsr7iz0xoRQC1GlsERLJL
 7R4G0tHmnmF8QrLtI8fzC5oQid57S6kQRof5zuRIa2CdlqxMMH5+JqqKN1O1ZjZ7jmZmmPBN0vH
 IvnJCl8jYdYfepA+/1C672DdMwHvBm+0HD9BImy5kJmKC1Y1tZnuRLFg21GBT8K73vq33tXu8Yk
 WT9IoHngL2eclntQKbpOTsvjHzu7qHDQFyuujfULZEwFnPfhMAeoJX+Oa2gXUE3dxt3JsqMdiTy
 Bhzpkef5VEJc+BQVEG+txhCATLnmxz6aswqrrFFJXZqvcx2BE1ppEOkSw+wtzTdEnmcQz5FygQc
 AuEApTjYhuVXvOm+yuG1ANS8Db3qMgyUuwVy2jOWoQVZ3SVUyh10wIIFrsd60osOQ/kKwVRK
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-23_03,2025-06-23_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 suspectscore=0 adultscore=0 clxscore=1015 mlxlogscore=999
 priorityscore=1501 phishscore=0 lowpriorityscore=0 spamscore=0 bulkscore=0
 malwarescore=0 impostorscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506230064

On 6/22/25 8:26 PM, Antony Kurniawan Soemardi wrote:
> The LTE variant of the MSM8960 SoC has a gsbi8 node used for the
> serial console.
> 
> That's if the downstream kernel is to be believed, as Xperia SP has
> a serial console on gsbi8 even on the non-LTE variant.
> 
> Signed-off-by: Antony Kurniawan Soemardi <linux@smankusors.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

