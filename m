Return-Path: <devicetree+bounces-171038-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AE3AA9D10C
	for <lists+devicetree@lfdr.de>; Fri, 25 Apr 2025 21:03:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 80E72188FA78
	for <lists+devicetree@lfdr.de>; Fri, 25 Apr 2025 19:03:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C283F21ABD6;
	Fri, 25 Apr 2025 19:03:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="gCmfGND1"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64105219A7E
	for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 19:03:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745607806; cv=none; b=S2/BOoTwdumQmiinxXG5Bm7JAH1LnlvZGCEcuSx5XmqNTjupXaKn/h2nsbodBpsCnRlZcxRQYP5Tqy4xcu1q3Z/uAp4dxnIz5ShILPbNxie03aEbFGy98n4L3ryrxTbJ/YxZXDg2E1ndymr7ZiBqeb+cXWGCM3diDB52ZVgqOqw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745607806; c=relaxed/simple;
	bh=5mLfWj+jwzO9e6XH5KOBOGiPhIhid9kotKcL09TSRRs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=HbgvSDU++apnGo80JEOLQ7JIS6rPW1L2qa5KpmAxdpZq10mHS6712lWQk0lEfw5mRVUDMils0Gsh10bwfDjtBTWIUElxJJ1yM51YKhxBPpmpSyDvnj3HqmIY7WdRSTa+CrdKqxMdAhu1MFUwR3GsWkGR8p+JmvKYLaqG+Nz/6Gc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=gCmfGND1; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53PGJqlT031947
	for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 19:03:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=d+OQsF8WR7J3ezadmXnGj6/J
	nTpBzTLVUrnSMduU/PY=; b=gCmfGND1WyskeqeTPo8rwftpd/r4wPc1u/mM3He9
	bWUJ3lH2ZBI/phlFp1WSu5xVJ7/DCClDgWQFBtYDtOebx2aBXY+L6Kg/C+JSoebl
	/OElJDXtP/z3Q0Ut80KJP18w8F3i2Hc1yxZuMDjuHENOw3GdxhP0/33OhIh2dHRW
	ORLNZqN91ZxJwqMw1qmRNZ6oA7c+YC6VGaMnoLbxJYQRyaR9jnh45EBDZ7LXg0Ku
	RyhbWB6d8xjn10Qo/N/ar6kcWfemIpfixTyFMyBdV+tQtDBewr6hdVoRihjh/Chd
	SJzf/ig/sxz3VWKF7W2wEtfb8f1UB4qePBjzJtT3zHqQMw==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 466jgya1h4-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 19:03:22 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7c54a6b0c70so257294785a.0
        for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 12:03:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745607802; x=1746212602;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=d+OQsF8WR7J3ezadmXnGj6/JnTpBzTLVUrnSMduU/PY=;
        b=QVviL2EMZP/pJv70SDgI5N/iuJEvywLsC8WRgAFI0S+tnbzP4chlVGBrJE142qrk25
         DIXuEHceWqQoyP2V3poZnjnQ77PkcUfznrijNbOmR3K2L/vPF5g/6y6I26kEbFYqXarU
         z6VWQQFkMyjaUjGWpKVqU5LBpvn6ouoObZRa47c8LE09uHDRoPYi6dKGPrvIsWBH0mGu
         p+cJ+7lQ0wiYhKSF6pFXfNufPgALUdxfHaqltGz4nRZkDsUbVCnnNIt0d2W7MQ7hYEOa
         cP+UZW6pdiFuJTi6IbFmJhc/lB+E2FpKf1v972UMwoTk1dbAljjT+RTTzcfvDX4T/jgF
         6KIQ==
X-Forwarded-Encrypted: i=1; AJvYcCWzBeb4XIQogRANoLwNFJJFf9TSiYrD5J8oVMpOFs7RWrpTKLyScZsq5OH3/i9l+wzxW74AnZgXp2AK@vger.kernel.org
X-Gm-Message-State: AOJu0YzqA+sxoxbP581W9otgUT5qBa+ihvIR7kJi6ss5MReqKYhpGIIV
	0W+vDgkO05mZ3W10R3XB0PWGHTi8lfNQAGuA8sUrOB6iv0sThq7Vw1qi6OxO23gasYOA4egc9MU
	jPGFOFLGjGZXvNKgRSpYNNSaPVlMp+mJJIdXLD3MQeWQRgM3dVjuO4P4A2HEf
X-Gm-Gg: ASbGncs4PGs7VyRPW9tMeu74Y4qCMUnj8/UBnmK8Tfza7G1WBpWW3MohfWRlvQFPls/
	uM5KZ5wXGShJ1MdaxhvuFsLyc0jJJ6utIgsOiWywE9ySk+yeblcPoeHpHP7uf2OP0X+IwqeZT6F
	2EG0BNTMaVY7TXO+CTFjj6G7J91sBH1X88u3ImJ2M4lDvGzCsRDcE502dKN4VCzWjyRzuRnM1Vu
	PtxTu2laxUBpzfqQtInN7ZEiO17PUColWSTwAECBka5orqhhpQYRIVygXXmmCMu1XE3u7zEz02k
	tVkApAktsIiVLzA6ObQhkhREV6f7ZW13UgQpTlDBJaXDTeVUEdGTk6VMrMU6P1lQof0wmo1rX3o
	=
X-Received: by 2002:a05:620a:3712:b0:7c5:b909:fde1 with SMTP id af79cd13be357-7c960718fd7mr529029285a.25.1745607801907;
        Fri, 25 Apr 2025 12:03:21 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG6pRYAFM9obH6sLDqc8iWZTDFSyA63+5Z92vfE4mhmS0Il4CaGvhCSgEYk/JEQXTzgN8c9+w==
X-Received: by 2002:a05:620a:3712:b0:7c5:b909:fde1 with SMTP id af79cd13be357-7c960718fd7mr529023685a.25.1745607801481;
        Fri, 25 Apr 2025 12:03:21 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54e7cca7b48sm693665e87.160.2025.04.25.12.03.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Apr 2025 12:03:20 -0700 (PDT)
Date: Fri, 25 Apr 2025 22:03:19 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Luca Weiss <luca.weiss@fairphone.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Felipe Balbi <balbi@kernel.org>,
        Srinivas Kandagatla <srini@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
        Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Stephan Gerhold <stephan.gerhold@linaro.org>,
        ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-sound@vger.kernel.org
Subject: Re: [PATCH 5/6] arm64: dts: qcom: sm6350: Add q6usbdai node
Message-ID: <7cuouqnka6w26tnfhdtyzo4c2jwohgy5gqyzv2yu662gvkg57g@n6amazzvznew>
References: <20250425-fp4-usb-audio-offload-v1-0-f90f571636e4@fairphone.com>
 <20250425-fp4-usb-audio-offload-v1-5-f90f571636e4@fairphone.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250425-fp4-usb-audio-offload-v1-5-f90f571636e4@fairphone.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNDI1MDEzNSBTYWx0ZWRfX5H4tmOr7niwT bogSwLvXuHFFU08FzlJk8mcekZ5o25n6Sb+xeZVJwiaTCAMfVHjtGhZC67sMC1+5/w0ENOa+f6L KjoKkz1n2BHToZ9G3uzm3JfHpYUKqStkIYZH467v298F6QXvQtsPxGe+YfocINSWgmuAK7PSFkL
 oo0GCCuxtEnoTTPnNpXctRSac4GegncNmDg993wvYWLuOIgT4g/+z5n9Xe+dUilHCxAcWULo3of L8kcRcFhY6AckK2BsLo5otJa8miVu6PLQ+hi7Ej9krOO2/2PBafqN76trD9a1TN8RHmpg9AbQ2Y 5+dkgbqmdB0A+FnvVg/k7dCieXrLbZ+EErnLlZs3UVnQx4uyAkhWgo8WKw1Gf3+PDa7QA1Vup5S
 HWUVYoSZI4qJ+YDHE/PmO7nRDrmZkyquWByl/Ttrcv4yGdDsAarK0zQTVoRiCwE0sesnQiSp
X-Proofpoint-GUID: TWSIaj1AwLPuhEhW0-MR-Fg5tcZFDMsF
X-Proofpoint-ORIG-GUID: TWSIaj1AwLPuhEhW0-MR-Fg5tcZFDMsF
X-Authority-Analysis: v=2.4 cv=M5VNKzws c=1 sm=1 tr=0 ts=680bdc7a cx=c_pps a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=XR8D0OoHHMoA:10 a=6H0WHjuAAAAA:8 a=EUspDBNiAAAA:8 a=s1otzWxbid28AevFAO0A:9 a=CjuIK1q_8ugA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22 a=Soq9LBFxuPC4vsCAQt-j:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-04-25_06,2025-04-24_02,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0
 lowpriorityscore=0 adultscore=0 spamscore=0 priorityscore=1501 mlxscore=0
 mlxlogscore=810 malwarescore=0 impostorscore=0 clxscore=1015
 suspectscore=0 phishscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2504250135

On Fri, Apr 25, 2025 at 12:44:55PM +0200, Luca Weiss wrote:
> Add a node for q6usb which handles USB audio offloading, allowing to
> play audio via a USB-C headset with lower power consumption and enabling
> some other features.
> 
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---
>  arch/arm64/boot/dts/qcom/sm6350.dtsi | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

-- 
With best wishes
Dmitry

