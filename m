Return-Path: <devicetree+bounces-244893-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 18266CAA038
	for <lists+devicetree@lfdr.de>; Sat, 06 Dec 2025 05:02:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 83C603007D56
	for <lists+devicetree@lfdr.de>; Sat,  6 Dec 2025 04:02:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2D28624E4A1;
	Sat,  6 Dec 2025 04:02:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="QvNBqC0K";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="SE78luCe"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A0B2BB640
	for <devicetree@vger.kernel.org>; Sat,  6 Dec 2025 04:02:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764993767; cv=none; b=Z21WFQEUbKvYf3G9SAXiADf4J44g9tRtPWopw9Bu+zFBPH8Q7Oalp6abkrKWg9JgoO0l05cayGfzV6qNnKc8wlFegyjb33k2lRR/SbEDxCAyrEzRXL2dloQSShbcYFiQcIGW6y8hq6GmR5Bgj1U49sZVgnyrfa/GpY4sMkZ0Kxg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764993767; c=relaxed/simple;
	bh=tBPnMtc3g0jZpnIRmwgSGMioAEP4R4vs984Q4Zp0lU4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=PaXYHyqQL44xxwaqd05MsSAPmcaUnBcuUwDb3V0VLmAAbmlTu1Hgn9dJOvZglYHfx555KOZbTi2EVYNusA1iAVgZ7rBAniZWlM1FJ4qZ2cZyoCa7Cp2Y2E4fn7C6n1AuwoYF+rX0PVCTzzWkODYf5knOwB6LMrSQ3VvEICQjU+s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=QvNBqC0K; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=SE78luCe; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B5FBK2u4177166
	for <devicetree@vger.kernel.org>; Sat, 6 Dec 2025 04:02:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=3P8RhC3cRbNOP0rl/IbzhEB9
	y9tPULpHaaL6+mDsxHs=; b=QvNBqC0KzNzVPRU95PJPr/+qVS+YGanOuwTiCMlh
	oNdhNbqndg49Ir+MILtlOUzbpIhlCMEcU2YYd7MUtwRzPz0N3yYfFeefna6JWCHn
	kRbr0KCY13Ry0ypW1ZfqBIwq/DQQt4DmbbRUBCd89MrlxnS2LoLRGQwE9rCI7+l1
	MohM4M3qnwoV+m+Tu6eZl8nKCDjmQ09XDy6kFelvGxdcWWtLhLP66zbkVKu7L8FR
	AoNIbJfm84kO8y9a63fiZi/pqFVs1aw973SwL+cmPgXnrL8swf1HLDkYo8lN7mul
	3/nKlOUpjyyA8lBo9gimL9fhB+0MUymrSqQYYCtwQD5jYw==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4auwm5af06-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 06 Dec 2025 04:02:44 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8b2dbd36752so557098185a.0
        for <devicetree@vger.kernel.org>; Fri, 05 Dec 2025 20:02:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764993764; x=1765598564; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=3P8RhC3cRbNOP0rl/IbzhEB9y9tPULpHaaL6+mDsxHs=;
        b=SE78luCetICliDbAdDANCRLnyGdDR+KvrRhcqEv0697FXZDKZTrbghQ4QL7xO0CbCR
         WjMshz1/sdeaaokKNMfqIQDieGbWQMnQIqua06r67LF5HsvJMKlC8QfaGNOUF75O+NUa
         jVzrVffG7/JyO2A8OZ1kJYAWg+zwlZoJEhJhC7u383JU3WuOzOYAGrhYRKfMHDiQ0nWJ
         QQD6WFdAJvILmVhsGubYxMgasvoWtpvNuERe0emkrE+mq6RKbk+3RM+lkxjJfn9UxYjS
         Ac9kj54wJcnfYjms8Sjoue/VtOhE8Tf6Lj/+73ULQ7EcRi086nfp+PqdwGSmQM7toPDJ
         CXgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764993764; x=1765598564;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3P8RhC3cRbNOP0rl/IbzhEB9y9tPULpHaaL6+mDsxHs=;
        b=GGgIQsrCIO95CF1BGLr1P8VP9ys5j96VV2w6L+rGloJ8rQwBtjsGbolRkkQyi2TQWq
         mfMYUoCXqxxyAUXAVFHHto+wHsdtjgYu26Piz/V+e9cLwfgDhTOOfVcwrbHe3odcK6It
         76CMI5q+3RPYlBPDl+5Q2qWINFg/TSkjzVdcZUZpItdbb2BHhRDqLLngRbIW4t49hvYZ
         LkdHR6me4Ba3Gc4awmYfWHSEqempSspGecXOWfxsyX5E4zWO2an/bufNg3VwP+hKfkho
         mOw6RljjyKsGtF5He+CrLdKkDeiGcfxd8jRb7FvZf7Vjpc+XRjC4hzCgcN04s1QgHxUh
         /K8A==
X-Forwarded-Encrypted: i=1; AJvYcCVSNRebQFvhaPZZJx2E6u9JTrTAcSL5RwMfZpE7+JSsbELRmDZFVF6RUNteCSF980K/gyZo3r9lUfIV@vger.kernel.org
X-Gm-Message-State: AOJu0Yx4oHB+upmZlcdlgYLW31VKz3wcmrkjCOXIu5O5F/F688eAqzic
	XuI98i4iRHSmlC0aOtkX2aDsoWp/puOCY9foLx9Z0tZhJpZOWw1i+18ZuTq3z/JJOVLMytHAAUV
	42+D0YtDRCXp9LNj7ArUI31tL5gsVrP23GbF+gPTfwzlKzjm6Cc4dk+F34PVNrwnF
X-Gm-Gg: ASbGnctDDyKyJjlodX/XOFAyS+WeRAqH6DNZN8/7N67u+D2zeg7y+fKWpu13xCIvevI
	EISI7TdwK+WUxDgP09AG8eiMaCZx5ugGxPf9vNyY/Abrky5BLC8Il/jSKzHH9biElC+jl1t7QOI
	lKdrc3kD5nTfEiMCbleDtFk7KLOLeCqMmDMbWs2QFZwqodf459GY1DvzCbjG9Cw5FmXFh1Wkd5j
	DY1TdJgiSo2nbb3fcPDTQvo7M+qzNX2GJ3tMapoyYpXoJ4FCdcgLgwnEWg5yTDnECzRSbmMxTyX
	av1gSlX2I2f73iDM+B2LXBhrh7L1Ez2I0VGnhyPJ5nxDwlitp6XR28IDU3LkA2v6a6w9UuA4opq
	WwNWZPgPfPGUNXNJKLia07+c1veXBQMM36648+Js11KAPCUUWWlTtEwR17Yt0zwMyyf+0jp18F+
	F6XFXQjCJc1KFuErSvYaIyMdI=
X-Received: by 2002:a05:620a:4726:b0:8b2:7777:f662 with SMTP id af79cd13be357-8b6a2589ac8mr201824885a.64.1764993763777;
        Fri, 05 Dec 2025 20:02:43 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEtdPTmuravVRhlZz8xV1WEVwbBUkAkyhjwHvpt7kRJcvSdxAlEvy5G47mBX7coj0tQB1w6+A==
X-Received: by 2002:a05:620a:4726:b0:8b2:7777:f662 with SMTP id af79cd13be357-8b6a2589ac8mr201821985a.64.1764993763272;
        Fri, 05 Dec 2025 20:02:43 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-37e6fe6bb67sm19293071fa.6.2025.12.05.20.02.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Dec 2025 20:02:41 -0800 (PST)
Date: Sat, 6 Dec 2025 06:02:38 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Taniya Das <taniya.das@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Jagadeesh Kona <quic_jkona@quicinc.com>,
        Ajit Pandey <ajit.pandey@oss.qualcomm.com>,
        Imran Shaik <imran.shaik@oss.qualcomm.com>,
        Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-stm32@st-md-mailman.stormreply.com,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 3/3] clk: qcom: camcc: Add camera clock controller driver
 for SM8750 SoC
Message-ID: <mcvwms5logao4sz2o4h5yfyi7kloj7pkx5qzq7byvtcmhbymnk@ynegs32kkxyw>
References: <20251202-sm8750_camcc-v1-0-b3f7ef6723f1@oss.qualcomm.com>
 <20251202-sm8750_camcc-v1-3-b3f7ef6723f1@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251202-sm8750_camcc-v1-3-b3f7ef6723f1@oss.qualcomm.com>
X-Proofpoint-GUID: J9338MfoNzI8dHzMJ5M-D3UFBkM6Tx-q
X-Proofpoint-ORIG-GUID: J9338MfoNzI8dHzMJ5M-D3UFBkM6Tx-q
X-Authority-Analysis: v=2.4 cv=XeOEDY55 c=1 sm=1 tr=0 ts=6933aae4 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=_j3VNrtD_Kzz85i8SO4A:9 a=CjuIK1q_8ugA:10
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjA2MDAyOSBTYWx0ZWRfX677zRxZHjRn+
 nS/myYwpD1AidyKB/emJVBwE2U8Lt7CAXCEXg9deqopdQ5lymY86tLjQF5JvNBJZaMZsGCrP/tW
 Zr1ll1xvkhWBt2S9FS7RgoatjAGYqHhxrf36MA1CpqJcmjpyxoiBK4HJruT9NtH9+kDYlCgcQXS
 WNHmQX/Ap4yG+K4Dzw2bpi+E/JSAqwI3ZXcuF3oWL1+BLRktqxVMp9Nvg7qpLOXaSREwFUqhZpD
 kH/r0IuUIZAhMpH1WJxd8h1qeDXmymERRt7caCLFjJw8RanW9G4CGxc44540K1slcKhT3IBTLdd
 aLaum5Z0KnLntQ30ZTOITGk+M18630I5umntAKLknPPie/OyrcHT4O5NoVbecvNFIAN7/JACRif
 7QHAUDBmXjzZfr1dUYo4ZaMR8NPE5Q==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-05_09,2025-12-04_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 lowpriorityscore=0 adultscore=0 suspectscore=0
 priorityscore=1501 malwarescore=0 bulkscore=0 clxscore=1015 spamscore=0
 impostorscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2512060029

On Tue, Dec 02, 2025 at 03:56:27PM +0530, Taniya Das wrote:
> Add support for the Camera Clock Controller (CAMCC) on the SM8750
> platform.
> 
> The CAMCC block on SM8750 includes both the primary camera clock
> controller and the Camera BIST clock controller, which provides the
> functional MCLK required for camera operations.
> 
> Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
> ---
>  drivers/clk/qcom/Kconfig                |   10 +
>  drivers/clk/qcom/Makefile               |    1 +
>  drivers/clk/qcom/cambistmclkcc-sm8750.c |  454 ++++++
>  drivers/clk/qcom/camcc-sm8750.c         | 2710 +++++++++++++++++++++++++++++++
>  4 files changed, 3175 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

