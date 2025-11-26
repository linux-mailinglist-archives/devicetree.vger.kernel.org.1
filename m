Return-Path: <devicetree+bounces-242181-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id BB728C879D4
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 01:43:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 62CCD4E06EF
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 00:43:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6937426FD9B;
	Wed, 26 Nov 2025 00:43:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="JZs7G1i0";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="I8m4dwpf"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 852E726A0B9
	for <devicetree@vger.kernel.org>; Wed, 26 Nov 2025 00:43:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764117788; cv=none; b=HcTZEVHrBtgkerRN4Ewwc2/G645IvXs5yOOWNgHO5kghQfrORGUFJ9UVW1W39SjUieR4EVJg6IR7p2CR1Rz0jNj1W+W/qcLJ7aKUG4+h96cNprnJ1CUYrr4t1F/dUo7jkGsxBWQiu18bnWRrHHOMoKQ1eTN+5xmV1ZwvgWJTTR8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764117788; c=relaxed/simple;
	bh=bpVWw7/OynyWPOk7FDcFGO4r8jbElVFGNe0+MNWQILU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=tZTw+SjleGlxey3b87SQQuqdklsrHNX+Qp/LwcS5/Z9JUORVfNQ/dHPJjPyQhzu/0Rp2hPyyiroOgw5QeBwh6jOSqrcAdrtP/+XoomznLHlEMdzhr0Fwbucj2/C1f68VlFGXkjoBD7+XR/cBB2IgTN9pEZLgMjJdTOYMteL+3qQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=JZs7G1i0; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=I8m4dwpf; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5APN4K8U432488
	for <devicetree@vger.kernel.org>; Wed, 26 Nov 2025 00:43:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=qy2M96A8lh9VMre3hbAFE80w
	QaeuvpNU7FsXvM6eX44=; b=JZs7G1i0YBRH4/T0xuW0LTTE8gSxxeJC+GSlqypT
	bZOCxxmieWIKbJStxfin5iam69MFT3682fyqJ2vXEcRdpsKhBcU9svUS8h29ycKn
	bQxKn2TdwtJ5CMp5PH7LVEIl8aQtrSQGmc9W3qZ0pwTpMOu1OuPZJWuaVX2s9j8E
	aPmp8smwvRc2j+DnegvITFvsiW0WBssxzGxgZ+m4SkxplEx3KygJiOkwTgXPSXD5
	GwTKfQ4hU/veme9iFZ4Ies3W0pVDqa76g7TZWg2LzQn3JvCcVTsr3c6QY3n/1pGD
	ZD6ukyIQUOKcCUDRoN9F+/lstY/lKWzuU6myoOVcRoUA4Q==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4angme8ywr-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 26 Nov 2025 00:43:04 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8b19a112b75so1504238485a.1
        for <devicetree@vger.kernel.org>; Tue, 25 Nov 2025 16:43:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764117784; x=1764722584; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=qy2M96A8lh9VMre3hbAFE80wQaeuvpNU7FsXvM6eX44=;
        b=I8m4dwpfaHNNyLBh/B36PULSabryaWdc7FsVrq3dd3RVGCT5Yp3qg5cgc7Frmaqc1i
         sBiHYowi7RJc7h4W5fAuDTZmMdsLVG4G4xmXTw8bU44mUJuIWzqFewne6XpQhwLk5h47
         0SKsRebiKZ5U5P2dsxrmcZQ8J5/PPb5oL4IUFePoGXOX4BYkj9Y6ytoRqZ1ZyQI+y9zS
         v5o17ZXpouOvCHvLz+CFN25afzFL3cfzAiboZY5hjKgY/AzUR5p3WcrwXF49ZYmAPcM8
         1c0plD99/8EOY2l9PgnelGRK8r6OOjHVFDete1kcrMrnuELQhIpMK90rb1egtqYlXvPu
         NtmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764117784; x=1764722584;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qy2M96A8lh9VMre3hbAFE80wQaeuvpNU7FsXvM6eX44=;
        b=PmeoLu+hbroE82YqyY9yt+Uma3311TRQ50eyo+JCLSBLP4PxbQQHt63cXepCNRVLq2
         gyMz1DWAdiYXTqQ6g9y3dby3z+uvyzg9NSxvZhYppNEhtgMIfhFJcxTgidNq3E9Gambk
         aqFrsiFZ2RWVRosKR3HMrCBLl2LCNOhK7JugZUfYgHL10dY+eKpK05u9dM/Vwhd0owk8
         Ti2PxEB8a51TcjblZdHpLKfyzrv49y8bOJ9WijRYbHEAGxcrxBRXkFVX0u6LKjKIHvan
         rZannBJybtTZ29Tyy5UIVSAaeV1Ng5Exa7U9oB2s6y78T+ytd4b/TQsfJBdecQytQbmE
         MUAA==
X-Forwarded-Encrypted: i=1; AJvYcCX2J+Nuxjb0waRuEyO6L4ROcLOPAZhX5Ykh7irlG1RLlYs+vpm3zTGxRrSFO3pEYrR+cE9ogmyMDX1y@vger.kernel.org
X-Gm-Message-State: AOJu0YxVnUIyzaE1qc2SKADC5YMEFqYp6gdBJxibefB3/tmpfnCfcXyN
	dOG+fLkFEt+O8bw6lxY14Cwgib5/KBrb9BMxPcH55Pz371cXH+MnQtAYIPzvy13CApl7ZDFpHxK
	1LDstzhxevd5f/ewnR99kEn3nWX0nGzSZQUWeEmMh2ad7VtCKVN6lI9nIhov9CNk7
X-Gm-Gg: ASbGncty2BMy2DBZDmT7SIy/cmKsN7RcNNYs+aGrNYBqnjm9RB0oXE6wgyTkqkZZ1Gv
	wuZL7PIsiwN7Bs9ncIy3V2ITZ3Z2ByoJcDE7YkSM+a5eubYyKX8vn9tPSzhtHjSPo38AcQJQmCD
	UpMYuImAgGZiOIZfvrx/8lmqOckKEdwty2OFz59tReAqLYUYT06hz3CwGIOWVjsa1T4NmpfgA4e
	B/1f1p49odDvZR0P8dYEnwagd64GPY6hEAxF1uC8eIoNxEqX81XlDYwHqHPixbl7HJ1NCAxMVBK
	CKN0/bj9wmtW+Q9FAEkR0ijfKiKuFOj3/3hLG8Lvj5zTmRO+vEzOB6fDUGsqGdiyjXulkod6y9O
	b+7jsL9tifEmY5WEsf04Q3C7TIlI8bcAq9lFl+Ps1Ma23gwBPei72X6XRSbaSXxJ4raF1mNtoqu
	PNzx2vUREoHBE3W5TgQoQzaG0=
X-Received: by 2002:a05:620a:4409:b0:8a1:ac72:e3db with SMTP id af79cd13be357-8b33d48394bmr2022356885a.72.1764117783680;
        Tue, 25 Nov 2025 16:43:03 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGEFjd/YjiG1JQBTrJawicWskwexI3xdbFSrP7Gp0E1UbGnlmMPWV2ZcK1AsIjtnnEn6wyEBA==
X-Received: by 2002:a05:620a:4409:b0:8a1:ac72:e3db with SMTP id af79cd13be357-8b33d48394bmr2022352285a.72.1764117783165;
        Tue, 25 Nov 2025 16:43:03 -0800 (PST)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5969db75627sm5451693e87.5.2025.11.25.16.43.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Nov 2025 16:43:01 -0800 (PST)
Date: Wed, 26 Nov 2025 02:42:59 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Akhil P Oommen <akhilpo@oss.qualcomm.com>,
        Rob Clark <robin.clark@oss.qualcomm.com>, Sean Paul <sean@poorly.run>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Jessica Zhang <jesszhan0024@gmail.com>,
        Dan Carpenter <dan.carpenter@linaro.org>,
        linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, Jie Zhang <quic_jiezh@quicinc.com>
Subject: Re: [PATCH v3 5/6] arm64: dts: qcom: sm6150: Add gpu and rgmu nodes
Message-ID: <z4gqro2bx6oq2ht75m2klogo5dsirb74tmc3u3shjyalxmaxil@5sy7ufmqhdgw>
References: <20251122-qcs615-spin-2-v3-0-9f4d4c87f51d@oss.qualcomm.com>
 <20251122-qcs615-spin-2-v3-5-9f4d4c87f51d@oss.qualcomm.com>
 <8560ad26-4756-4c2a-97c3-2c5c0695172c@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <8560ad26-4756-4c2a-97c3-2c5c0695172c@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=PJgCOPqC c=1 sm=1 tr=0 ts=69264d18 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=kOBCTNg5yw7rtN7J0wwA:9 a=CjuIK1q_8ugA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTI2MDAwMyBTYWx0ZWRfX8cztePtypugX
 naNfmGZZjRI7AEBPFjFuQGkKWI2N6IkEZLDy6Vx6+yLdEzXDuaJjIlgR8T248eNAIzO5W++3FlN
 OoxgBW+pUEM/YksaTW7tfPKJYt5a/5ZS+WuvmiBX34wry9n78BN1TaFY+pYDSy2iUALo37BTBNk
 fh7EkaW9IsKdgEwCOmUJDXOPA9w6NZGwWOTWQ1jVZzpnvJ2wVZ3LRdSK36pspRGX6mHPO8MZ7lM
 6AGKxZDUTAkkKIgR4KycEYCYnJq2JbyqDQOH16WSUjTZoZQsMSHHgFCeDV7cafnUh7evEY83bUH
 GGZZovVRT2Jn8sey7YLz5u+YQYdFN9zfTJuQsBwHdGciENe929pi/bPuD31/FFpIOk+w10lVlK8
 vsJvyFyF3CmNVTB3XqsRah00j2bAHA==
X-Proofpoint-GUID: VjzeIc_d3GmeXnlsM2sOEvPVTmqJZqNG
X-Proofpoint-ORIG-GUID: VjzeIc_d3GmeXnlsM2sOEvPVTmqJZqNG
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-25_02,2025-11-25_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 impostorscore=0 lowpriorityscore=0 suspectscore=0
 adultscore=0 spamscore=0 malwarescore=0 clxscore=1015 phishscore=0
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511260003

On Sat, Nov 22, 2025 at 03:03:10PM +0100, Konrad Dybcio wrote:
> On 11/21/25 10:52 PM, Akhil P Oommen wrote:
> > From: Jie Zhang <quic_jiezh@quicinc.com>
> > 
> > Add gpu and rgmu nodes for qcs615 chipset.
> > 
> > Signed-off-by: Jie Zhang <quic_jiezh@quicinc.com>
> > Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
> > ---
> 
> [...]
> 
> > +			gpu_opp_table: opp-table {
> > +				compatible = "operating-points-v2";
> > +
> > +				opp-845000000 {
> > +					opp-hz = /bits/ 64 <845000000>;
> > +					required-opps = <&rpmhpd_opp_turbo>;
> > +					opp-peak-kBps = <7050000>;
> > +				};
> 
> I see another speed of 895 @ turbo_l1, perhaps that's for speedbins
> or mobile parts specifically?

msm-4.14 defines 7 speedbins for SM6150. Akhil, I don't see any of them
here.

> 
> [...]
> 
> > +
> > +				opp-745000000 {
> > +					opp-hz = /bits/ 64 <745000000>;
> > +					required-opps = <&rpmhpd_opp_nom_l1>;
> > +					opp-peak-kBps = <6075000>;
> > +				};
> > +
> > +				opp-650000000 {
> > +					opp-hz = /bits/ 64 <650000000>;
> > +					required-opps = <&rpmhpd_opp_nom>;
> > +					opp-peak-kBps = <5287500>;
> > +				};
> 
> Here the freq map says 700 MHz
> 
> > +				opp-500000000 {
> > +					opp-hz = /bits/ 64 <500000000>;
> > +					required-opps = <&rpmhpd_opp_svs_l1>;
> > +					opp-peak-kBps = <3975000>;
> > +				};
> 
> 550
> 
> Konrad

-- 
With best wishes
Dmitry

