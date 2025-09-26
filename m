Return-Path: <devicetree+bounces-221915-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 4519ABA4083
	for <lists+devicetree@lfdr.de>; Fri, 26 Sep 2025 16:06:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 610121C009C0
	for <lists+devicetree@lfdr.de>; Fri, 26 Sep 2025 14:06:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 55D412F83A1;
	Fri, 26 Sep 2025 14:05:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="LT6uGOFX"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 017232882B6
	for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 14:05:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758895555; cv=none; b=tgTtbbCaD3eRLnh8fYkojUXb0/RfK8KqDSER8sqG++5PXGnG1YQvQ5QQtJZaLu5tJ3P3JCc+RiE5mWFnRw9SFz5vus4JXmSRejWyBjbGX8HmIvF1EhPqLEpadjdQx6++btC6WqT/zRJtz6cXrsydi/kFK0jPvifg0VAB2Yr4Yf8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758895555; c=relaxed/simple;
	bh=h8O3JMj2Nf43sk9ATCze+ZZOkp/rooCR8t3VS+9ryNg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=WFRrNc+kOg27Et+PCAf8wfQwvBfujCpPD4wQv0NW3hldZ8zEKGH2DbU6l+yyvzDlBDOBEJ61OIBH0Oue4v+QT55aJjiNgfAtd0BxjxItsyJBKKn8oqJB5vi6E262jgV3K6vD83F/WM2JNK7//fEIQmQzTn9wTIRcEwzbCQ8ZfRY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=LT6uGOFX; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58Q8vdXq018195
	for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 14:05:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=584nrbDAdLBURaO0cgXzCKXy
	eOmRtZu/VSbhHT0wC+M=; b=LT6uGOFX0SR1QZQJx9bkXdGg/dXzjHdSfKJWmOwi
	ljGQn5xCogB1rQaZbF7TQjvv7rqySxM4f8vz4W6EG0xvvsZZrHZ9+SGW+CAxZouq
	jbIx+2yFc+TajvJYxuLkLkwq2r4AlML6lXHXq58vVNXIwulwRXy8K3dcrc5kAXs+
	bOSMYW4IoVT3BYgfwM5/aIuqPlfz5yfZrMNrlcqI/0JNMYRVd5jjoTX9FyXjEvgw
	+Ffqrkn8clA6GSCPx8HXzIAiH3F9NFhxq/nq6j4rNwCSs7yAO6X9WiITkQYpY45h
	lu4DSs0+DyP9uSx+QdYxo91+dHCp/jQYgSKX+pR25euFjA==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49db0tb37u-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 14:05:45 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4dd932741cfso17633791cf.1
        for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 07:05:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758895545; x=1759500345;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=584nrbDAdLBURaO0cgXzCKXyeOmRtZu/VSbhHT0wC+M=;
        b=PUCvQA5nj0ETfEap3zvRGfus3Y/nWdEAo9cjqJmmbQPPpCcucD36XQNYw6hQLnp1aD
         uF2f8UDpREzuPrMmgg2HKGnj4Z6jtEQk5bCt8Kqbea7kj9ykfD4K6BUuFMqvw8Xm/hwX
         xVsjScDR3Ahx6fOeuZn0DP3DrJvuP8PqcB7PumlQIVEtkP8YYFljwDN2sCrA1HQbVLbU
         d/8p6MvB8+uhkw4NRxSFksfkzY4t2S2XwzzEU7479WGmgAH6XQ8JcTSo9IQD1llX/1mY
         2My7urerlmmG/oUbIH2jCi4qcXF8XMBYZ6efmKIUnE0ysJQNY0tbCcTD2Frmet5QD6cf
         yF9Q==
X-Forwarded-Encrypted: i=1; AJvYcCX4Y5xDmF63AA1Dg9rXiDo3T5lxGbmPjIPFDrU63JQE1b/XPGGSNORiFO8+MUhS7OQvdVmZJ0J6KRQy@vger.kernel.org
X-Gm-Message-State: AOJu0YzPXQOFKXfBrpiPR38dLhmSvH8y51/c5RLvm2pN0J6QL3FfS0iX
	IaMAIQJSgp39HXsYGNBQKBRAQLDB1Q24mnqC5N8CIkCmgFtrxWLLdFWiNLBZ3aDQZg2p0/p/cRo
	D9OxFj2It1dDTKsCYxSNoDzTUkpjKPjlpEFUrlwzRTOYfPBlHzrFULMjKM4CSGrLb
X-Gm-Gg: ASbGncu1OqU5jlvgnwwTmg+baIXygwnnYnT3Hq5+EpA4VVMMmd3pop+eZEfVMO02DdL
	QfEK9aji+o2Pe+FAASQInlZuS6rU/NHIn3aSDOc7IE0FCTvs/9ypOWWN792D6Lo+QvlFKaNKLm3
	SI8tcPgqu9BCokcqVuMVVrteIKWGnJrqsl/VhQv+3yki9c5B2CYBHcGS9sHdMMjnUQsn9AHxe1V
	QkCcP7i6Xg+PXTmN+elfdixiWcsYC8Xzz6nvi1GCIXdfzpXz7sJyVHzyD8wAFOnPsWXAA78gbZq
	ZM3ohK5cg2RPw1ezuQ3q029iHtnd2MtaG3pV9cEhhOp4+eTU8aTVA2mAzoHnTHcvYcNrRPUgzEL
	B1HZJGwKxI4p6dr1C6stAyZA7oIeI1pzN72zY3b5VoJCRENPFoXHF
X-Received: by 2002:a05:622a:768f:b0:4db:dd57:e093 with SMTP id d75a77b69052e-4dbdd57fb69mr58371561cf.51.1758895544717;
        Fri, 26 Sep 2025 07:05:44 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHltJA6GbWIV/+igvGWnl22Iv/P1bx9gnuRDpBgQL59uVz2fnVyjK+CDBIlVIjHHYtcOin3WA==
X-Received: by 2002:a05:622a:768f:b0:4db:dd57:e093 with SMTP id d75a77b69052e-4dbdd57fb69mr58370611cf.51.1758895543827;
        Fri, 26 Sep 2025 07:05:43 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-36fb7710256sm12274671fa.45.2025.09.26.07.05.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Sep 2025 07:05:42 -0700 (PDT)
Date: Fri, 26 Sep 2025 17:05:41 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Ayushi Makhija <quic_amakhija@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, robdclark@gmail.com, sean@poorly.run,
        marijn.suijten@somainline.org, andersson@kernel.org, robh@kernel.org,
        robh+dt@kernel.org, krzk+dt@kernel.org, konradybcio@kernel.org,
        conor+dt@kernel.org, andrzej.hajda@intel.com,
        neil.armstrong@linaro.org, rfoss@kernel.org,
        Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se,
        jernej.skrabec@gmail.com, quic_rajeevny@quicinc.com,
        quic_vproddut@quicinc.com, quic_jesszhan@quicinc.com
Subject: Re: [PATCH 2/3] arm64: dts: qcom: qcs8300: add Display Serial
 Interface device nodes
Message-ID: <5irzdmwxs2j4ppti35hc5235yxqq576doerrrk6fhcpj7f726a@eh5rl2jwb5kg>
References: <20250925053602.4105329-1-quic_amakhija@quicinc.com>
 <20250925053602.4105329-3-quic_amakhija@quicinc.com>
 <vsty7sy7gi2eeyifokwcqpoycmarxietkijmlkymwrmzmdsfws@x64f4ulbc6ja>
 <8c248bf8-2f25-443d-a08f-6504c349b72b@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <8c248bf8-2f25-443d-a08f-6504c349b72b@quicinc.com>
X-Proofpoint-ORIG-GUID: UnTSH5xV6_P7yqYScUpFjM0kvloh5S2V
X-Proofpoint-GUID: UnTSH5xV6_P7yqYScUpFjM0kvloh5S2V
X-Authority-Analysis: v=2.4 cv=Jvz8bc4C c=1 sm=1 tr=0 ts=68d69db9 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=COk6AnOGAAAA:8 a=fWuQbBWbtaeYDtlrs1EA:9 a=CjuIK1q_8ugA:10
 a=uxP6HrT_eTzRwkO_Te1X:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI1MDE3MSBTYWx0ZWRfX5AGwmemL1PIA
 EmPQVxU3ouBZH8K/fajddXaBc8N93l9fcuUf5+dQZBKvmPZAu5J5s1FFR2eLNM9bBoZooNEVWK9
 I5TA7K6Up9yqe+vVXL8tR6RDvfcgeMmb8VBwHX0hFimhHLkLRFCN+z+U2Rl4m/bLI+6mLPusKSF
 JqM+7iFqBpP3v9+c6/mrrE4bQ78dfsCNF2JqufT6Ynil6MVfZKn3rXkEWD341emEKwItzggKAgx
 GnV/M6ZaAdpoRNhnyeN0wJmJbWrK6+oC0BcDn96dRhHAMluZWDqjD0WY2DvpSqQnBK4rClaSeQF
 c6FvVIwvVIj4DJa8LekfHE4Iq9m6+w8ivq1Osxx7WGI+3NIyVVZHN8nrUQMQIO/5hwy91MKoAd0
 3hhaKCqjuTASTxfsGfIbgQLLNwNpyA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-26_04,2025-09-26_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 malwarescore=0 bulkscore=0 impostorscore=0 lowpriorityscore=0
 suspectscore=0 spamscore=0 priorityscore=1501 adultscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2509250171

On Fri, Sep 26, 2025 at 02:55:19PM +0530, Ayushi Makhija wrote:
> On 9/26/2025 3:32 AM, Dmitry Baryshkov wrote:
> > On Thu, Sep 25, 2025 at 11:06:01AM +0530, Ayushi Makhija wrote:
> >> Add device tree nodes for the DSI0 controller with their corresponding
> >> PHY found on Qualcomm QCS8300 SoC.
> >>
> >> Signed-off-by: Ayushi Makhija <quic_amakhija@quicinc.com>
> >> ---
> >>  arch/arm64/boot/dts/qcom/qcs8300.dtsi | 95 ++++++++++++++++++++++++++-
> >>  1 file changed, 94 insertions(+), 1 deletion(-)
> >>
> >> +
> >> +			mdss_dsi0_phy: phy@ae94400 {
> >> +				compatible = "qcom,sa8775p-dsi-phy-5nm";
> > 
> > Add qcs8300-specific compatible and use sa8775p as a fallback
> > 
> 
> Hi Dmitry,
> 
> I have one doubt, even though the ctrl and phy versions for sa8775p(LeMans) and qcs8300(Monaco) are same.
> Why can't we use the same compatible string that we have used for LeMans ctrl and phy ? what is the need to define a separate
> compatible string for monaco ctrl and phy ?

Konrad responded with the reason. But also, this question should have
been asked when you took a first look at the qcom,qcs8300-mdss.yaml.
It has two compats for DPU, DP and eDP PHY blocks (for exactly the same
reason).

-- 
With best wishes
Dmitry

