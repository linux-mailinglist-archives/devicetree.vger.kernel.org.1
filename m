Return-Path: <devicetree+bounces-217778-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DEAFFB59336
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 12:17:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 855F31692C2
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 10:17:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1EC1E2F8BFF;
	Tue, 16 Sep 2025 10:17:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="CIKH2PUe"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DB4B29B764
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 10:17:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758017876; cv=none; b=X/VRd+50NGyTwYxfhLkgNd29MY0mvHQD3M7CWdfPLr91vEG5P/X5mcnQ5uXbyUwnOokskptadDzhvokk+DeKCqZsRZrw52iRGF9tLvX41oLZwRBEPotHiFUgO7Y8Y2BSvxgULq1SdGSSCXI8I1bZCVocBl74iuqsGce/1Gp8sT0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758017876; c=relaxed/simple;
	bh=/cvaAE2HoDQnjzYGy471yA14D/oJLdLlepOzXO6YJTw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=MNYLZP0WfVhcMQanuuK5ratf0P45W1tOpwrNB6LdZDalMmgxmplbY0fMRkBpgop79CtS58PNHXMmT6qZzxuI7lcp7xah1rwmgpa40z1RL6copHJ3yeSuRf0ik8VvBys9jg9YBBjipfdiSmsSf/lES3buKkGZGtO9nGQRAFdBbiM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=CIKH2PUe; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58G9uBj8020047
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 10:17:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=2Er1pNum/WmhMsDVwFK5vpTl
	0bY+Xaqs3dc/o+OSOUw=; b=CIKH2PUeyqmm4yHUnP0Kod6NjJwBKmeJCzMVunQ9
	ukcYme1sv6tyUgnK0nE0u0OMV5O2J2JJSVJ70Bz9KNKmYT54hQlIfnN1g7coe+Ph
	bOzmveFKp6mqhPqPZttgo9XLwoKAfcYIrXdkbhKWvUWSjuajFCTNhva2CJZ6J0m5
	3jHsG0/vf88kLi9wbCBrOAGn440ViPnLuhrxA+KH03faI7jE35Fgry5emKhxfm+8
	VzwIgVD9HVXqMZM8rhtSGoBsMjEFgN3KHxaP+NLvxkjvaHjINiKeR7daN60R5MmX
	pnEGAZli1y4uEdV8OduZHz7QulKGFv7KZPxs+xwzTBT9cQ==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 496h1sm0bc-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 10:17:53 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4b5e178be7eso148683571cf.1
        for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 03:17:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758017872; x=1758622672;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2Er1pNum/WmhMsDVwFK5vpTl0bY+Xaqs3dc/o+OSOUw=;
        b=tlPrUNJpIKqYGtLAV6z/A9NLDu70CbXZehy2rHUDiIC3S7DWgn4ghAf5CZ94CqvDUs
         OxRQPgyvvdHXAKPGEwAVD9OTSpoI01YqNzNnrp6wPTqlf83Z+TClEM53W23MeU5VJKih
         Ed8AFebw0sGNHC7mNaWN/SIxmbnv6IDKJJikqzR+tjMevnqvI1GwECPpsvxT3vgZglwV
         9Urq8aj1/rpCIlmrzeqpv6c3p3El4yz4fcI/UbRR7gOeAq4B8ao2KJe7zQ2DJlj/NHQl
         R+G7znw74Ov+tM/SvgoSbFhNhAWGwr+3Oyp/hGJY0jq5HG11qnlpENl/wNbmer6H56YG
         KdKA==
X-Forwarded-Encrypted: i=1; AJvYcCUx7FHXPtdSMqimlwWAvxk78h14t6S3oq9hr3vUU4iubnMWTJZuCbtp6EXyAd2lFsaRAzsJFgAg4cVW@vger.kernel.org
X-Gm-Message-State: AOJu0YzrfswDR0QqE7ogXOI6YWKgV4uHYnRuac04GOwd3QBtrPqNS2bl
	3cDUce2NwMXbcv98dPmQIjx6jA/7cHvPwV3ZjH+qRYo6rtXlYB3kSpxEx32otyEdHrX70DxYxQI
	8RijoBric7v3GUHDU8GXv2/Ux81cVEycm8HxVAilbsVP15Py6ujXG4+mNL8aaXOez
X-Gm-Gg: ASbGncsJGK7NHvbZk0jOuGYeecpLjiOfY72gBsgJcOeKxTDafhfIer9MOpUcfyoqwNL
	SFn4MTgbJnuELUDrZO0GL7NOUhGZwUYX6t7KvKdPt49pDumIFwJQ/RqFdsjVPYv6Z4PzH2BPoWa
	YSgrdX2UP2vK3DLK3N3jRzNLji0RoAY6U+dWgEWCQam+mHcwb3v0oPT0bz/V2XYWeWMk9S3C6Y3
	KckJ/nYTZalaA9iMkiUC1kKwznGFxirItXLVVR9/3e4kTA18wpSREgcxyUMPvNwbp1FDmjkDV67
	ibinBMiQNV8+lvLHujJGnoJllhOLam+A59KAbqkktI5ADuiqHgVxq/8EsOl1v2t9sD4DxMsSFRK
	xYjwqVrAxIIug1adTIWoiUqTiiARmxHKbe2hR0CDuX4y3wevbWlnO
X-Received: by 2002:a05:622a:1f16:b0:4b1:247f:4e0f with SMTP id d75a77b69052e-4b77d0e8accmr201211461cf.57.1758017872340;
        Tue, 16 Sep 2025 03:17:52 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGG3/RyuWQfRZW1mY1j1shvOvp1blH44FZkzAOAV9d+81uzHG2LCJYhHB+EHzub9I/8NxYxnA==
X-Received: by 2002:a05:622a:1f16:b0:4b1:247f:4e0f with SMTP id d75a77b69052e-4b77d0e8accmr201210971cf.57.1758017871659;
        Tue, 16 Sep 2025 03:17:51 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-56e5d5e70c8sm4310701e87.52.2025.09.16.03.17.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Sep 2025 03:17:50 -0700 (PDT)
Date: Tue, 16 Sep 2025 13:17:49 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>, linux-arm-msm@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 2/4] dt-bindings: rpmh-regulator: Update pmic-id property
 info
Message-ID: <le4fsudu7fh6q5sstz5zndizfssgiycswzhmzuoioccxvth5mo@weyftlxiohlz>
References: <20250916-glymur-rpmh-regulator-driver-v1-0-bb9b00e93a61@oss.qualcomm.com>
 <20250916-glymur-rpmh-regulator-driver-v1-2-bb9b00e93a61@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250916-glymur-rpmh-regulator-driver-v1-2-bb9b00e93a61@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: z0_yjNX4Ay4hfoBnzCVu25TOJuztCqZt
X-Authority-Analysis: v=2.4 cv=A/1sP7WG c=1 sm=1 tr=0 ts=68c93951 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=8Yl64O_mmtZwUmTP7D0A:9 a=CjuIK1q_8ugA:10
 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-GUID: z0_yjNX4Ay4hfoBnzCVu25TOJuztCqZt
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTE1MDA5OCBTYWx0ZWRfX+AKnj+rAShPq
 McycCaLJxkoeqeZz2PYnhVzvCgeFnJRWwRFnDlrgyYLeHp3Bxxxz5SOWFgqFOy74N3q+Q62+J9y
 o+dUymG2e01fN8be1KLnYe/F6y2v+IAbLnw2zoU3zddTHqcwZCoUPSHVzUE8Bd3ltH5Zav+7nIb
 7l91FpYls/fimMN1BL9fjImkgv1LoMxJwwbZpa/NyJEPxOBubdSV6Am2KrPoAcuGUDnp/BhQ/E+
 786ftrVJhAxeFoqkFDeG72KkYQF1/glf0M/HHnBVsSn/iLQMWDoI/V/yEyXtZzPnM7sD/gd5lsW
 +LwsAzfuJy1VTJhDeA9O4PZW3fObBELWamc6jXuN8X2A8WqWcaacH++BHbcpzvrj6QjF1grBUZL
 SQWhYdrY
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-16_02,2025-09-12_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 spamscore=0 suspectscore=0 bulkscore=0
 impostorscore=0 clxscore=1015 adultscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509150098

On Tue, Sep 16, 2025 at 01:28:16PM +0530, Kamal Wadhwa wrote:
> On new targets like Glymur, `pmic-id` will have this new
> format `[A-N]_E[0-3]`.

This is a statement regarding the patch. Please desribe why you have to
perform the change.

> Update the property description to
> reflect this information.
> 
> Signed-off-by: Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>
> ---
>  Documentation/devicetree/bindings/regulator/qcom,rpmh-regulator.yaml | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/regulator/qcom,rpmh-regulator.yaml b/Documentation/devicetree/bindings/regulator/qcom,rpmh-regulator.yaml
> index 40e57b10ebbebeff130871b6d978df64111b6f29..40ddc64577e78b5c0dbb7b4e8893a08e8b37c92e 100644
> --- a/Documentation/devicetree/bindings/regulator/qcom,rpmh-regulator.yaml
> +++ b/Documentation/devicetree/bindings/regulator/qcom,rpmh-regulator.yaml
> @@ -108,7 +108,7 @@ properties:
>          RPMh resource name suffix used for the regulators found
>          on this PMIC.
>      $ref: /schemas/types.yaml#/definitions/string
> -    enum: [a, b, c, d, e, f, g, h, i, j, k, l, m, n]
> +    pattern: "^[a-n]|[A-N]_E[0-3]+$"
>  
>    qcom,always-wait-for-ack:
>      description: |
> 
> -- 
> 2.25.1
> 

-- 
With best wishes
Dmitry

