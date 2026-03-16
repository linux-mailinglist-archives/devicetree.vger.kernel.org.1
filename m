Return-Path: <devicetree+bounces-275906-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4FMMOHhtt2l+RAEAu9opvQ
	(envelope-from <devicetree+bounces-275906-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 03:39:52 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D5E1294304
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 03:39:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0F8B03015736
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 02:39:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6357230ACE3;
	Mon, 16 Mar 2026 02:39:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="TYwQTKwl";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Uf/wQVN+"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 321857081E
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 02:39:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773628771; cv=none; b=A9wApIpw8cACnjcvoAWoE3SWKmxO9njbii/tJGNW+ofQodOF0lwVfL47vLsl9qgfTaBUQuiJGqn/zy5jpzQOmCyH8fLUmh/85ETPGU8/82YwTdFsod8JBC/gLkZff4YtNVx9RmtupIVHv8NAkjB/cO0zuJwMiqfN1su/8HtdtFo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773628771; c=relaxed/simple;
	bh=0U1mL1UzFzc/KQrV49S79hzot8Xd5etZ/LT7r1XYUuU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Ew6itKF5euUZFar4LtLffn/GDcm/p72IZFO6W/u/D8nWsPPUd4kWqMyfN/Sim9ObJjd5jnujKb+XPkZisvWRI9dBwbCmu9xDxSKnlYjAH476d5MXDf8XmJND0OvPvRueUHu3fo41WY73HGeLlWdjbFXwDwhMaLGH3j1RPKYzRyI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=TYwQTKwl; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Uf/wQVN+; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62FARFKt2316052
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 02:39:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=gvLTfYITM+tmEqm/B4CXLFjI
	cIvItRDMEKDQBtnxp0M=; b=TYwQTKwlFRPixVNMVKpqfE5nQrtSwRUHjz1QZn1i
	dd4KMAdUZcReaxVaAevqlcA4gab2OhR3toHHOF9vQiDw+E3L2ESbyCu7MdFHw2D8
	2DMMT4LzLgMKikpl94IOUQvUSHPmY9r2CLbw7s0OpaHR5KmbPEiThob3+tFxuOoV
	VtCWlzOklX+rxiwJDx8zT3wDoqz3w//GoE1uhrjqBGqunk8qSQgUJyVkEKe/khOx
	aNsZRBm8+lg7xQxAhx8ZBfExaZCIa4E10WmS82mqmIDgfanlSwKfx1vyE3oGawDP
	I+rU6Q0uoyxgUgI7GR9d3pDL7qiLfUlecogzUa4v0nP5NA==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cvyy5ksx4-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 02:39:28 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8cd858e8709so4622483985a.3
        for <devicetree@vger.kernel.org>; Sun, 15 Mar 2026 19:39:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773628767; x=1774233567; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=gvLTfYITM+tmEqm/B4CXLFjIcIvItRDMEKDQBtnxp0M=;
        b=Uf/wQVN+xWFpozVo0jtVv8CgAZGTKq0WOQrzewOt3J8UNqSa/dDYc6yBqzLRBTkXUF
         omCCGSkf52hq3JwtJy93OGqw1DnW59IDkcge1yjOIU94LT5f9S1Yd1mH4mLe0+REbGSe
         1S0SPv9LqIbwKXncRIkRL9fnuxm8K1H0SAMQI5f8wypF1uHGd3tNrLyqfs4ESOE0WqhI
         VZFnvY+uBsNx2LTLIW27raNMoMspKc8V40il0Y9Hqk0CmwIOco2WV/F0WobfyW4FOET/
         npcLXXqTj+DwHxM1kuxx/pRuSTsqq6DyJ/H/6qHILPaxUsjKbRJLQqgfnkhDj7wLpEFk
         fqUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773628767; x=1774233567;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gvLTfYITM+tmEqm/B4CXLFjIcIvItRDMEKDQBtnxp0M=;
        b=U07JhDNW78nVCq16uVCOkjjuIX3tF2fquqhu2BUKoItbS/dHx3n4FWTayvCkpAcBs4
         6mIKpkDY24M22WF8BM0xWFr7Xj7+Yfa0Or79lgDvwGmCqGRDs6h/OY6ZKb6Cb2iqLVfC
         k8GIlVGDIXSOR2un6KhS+ZZxC2LckXe6WpmMSo0t1ojJi7UTwR4Q8hWbJbIAfLLd3VYe
         OSXXWhTHE5ntQrEYWqP1KQJZ6SMnLLrjdhmg3rORU/tpshB24fnB2vztq8xEYrTJA5KP
         Jif1hcJiBKmMvlIL693q7QWDfccjbXzlrP+nqw7mS6Xrs5ftOr/QA6+AUodQf/cXz+pE
         u8rA==
X-Forwarded-Encrypted: i=1; AJvYcCU0WTHYceTky0jLZznTipBdWucRGhdu5MibfG2DuHXsXebrOTn8RmXRbLleY8B8px9bU46fg+LlHTn3@vger.kernel.org
X-Gm-Message-State: AOJu0Ywo6GbomFETcoCSycYE9gaam0/mpnAbK3zGg3evx8sjNAZnJWBD
	FuJuDbkr9tMDsMkN6teXrpP5+Sztf+rZIRo7MFAoxEMw75vhqyDvSfmry4EAU6M9610TMKnH8iQ
	DsG+f8rMtXQYVLTX5GsgxgaATIuFJiZzq9lT96Ya1P97kxaZvCAKcPBlD52+4sYQc
X-Gm-Gg: ATEYQzz2VxGmcFgmfRp1vlRcDmHR6E0KZJqzpblRpITDckS6yrNe05QT+BqhbKgggCR
	sXBL2PSAfbTjmOykINEx1jIHp3btMsVrJIk5JeRaPWxZUvGXwsGkT8uLD7JQ0xm6oO41y0ajaa7
	2cNM2rtlrz4GKBIfHn0QcKHTmd2G1O+uUtkkyDxDFE2ubK9ZHeaM2MGDyxjO6z5QZ5bH7/U6SSL
	bk1dIOjVE+2k7OBhKvVtERHS00z1iCYY9tQKWe//JqXG0qLBfqNHVdN1cfjRqHWDikZj/MZ4WDh
	9wTFMPkqPwY9GMXTZXB8loB+8f5xQ39LCXys2FD7aI/xSRDceAlsdrQ9RwanIkPGDPCT7prtE7z
	aTN51Pek85wGDGs4NSs7zYGUx5eWNahIzTsa6jETkGgR97e+FQ2HY3W8XSZUgvweeMg2t09LKUA
	Fi7/4fN00xGlf3a7wyDlpYwI1rj4vKW0AVvvc=
X-Received: by 2002:a05:620a:4510:b0:8cd:b52c:5983 with SMTP id af79cd13be357-8cdb5b59a6emr1583621285a.42.1773628767439;
        Sun, 15 Mar 2026 19:39:27 -0700 (PDT)
X-Received: by 2002:a05:620a:4510:b0:8cd:b52c:5983 with SMTP id af79cd13be357-8cdb5b59a6emr1583619585a.42.1773628766961;
        Sun, 15 Mar 2026 19:39:26 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a15635786bsm3043389e87.61.2026.03.15.19.39.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 15 Mar 2026 19:39:24 -0700 (PDT)
Date: Mon, 16 Mar 2026 04:39:21 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
Cc: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Robert Foss <rfoss@kernel.org>,
        Todor Tomov <todor.too@gmail.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Bryan O'Donoghue <bod@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-media@vger.kernel.org,
        Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [PATCH v10 1/7] dt-bindings: media: qcom,x1e80100-camss: Add
 simple-mfd compatible
Message-ID: <bmcxyn5bv24cmxvuyhjbbsjb2bfhq55nmoccfqxvgiwx3g44nb@xq5fsyfqdma6>
References: <20260316-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v10-0-fdfe984fe941@linaro.org>
 <20260316-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v10-1-fdfe984fe941@linaro.org>
 <cca53190-ec16-40ee-ab4d-7bfbc1f082e8@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cca53190-ec16-40ee-ab4d-7bfbc1f082e8@linaro.org>
X-Proofpoint-GUID: nkPrFz53P_9fDlEy9cw5RgKI_BTv1JNj
X-Authority-Analysis: v=2.4 cv=QOxlhwLL c=1 sm=1 tr=0 ts=69b76d60 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22 a=KKAkSRfTAAAA:8
 a=XP1F8gPGJAlzEhngflAA:9 a=CjuIK1q_8ugA:10 a=PEH46H7Ffwr30OY-TuGO:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: nkPrFz53P_9fDlEy9cw5RgKI_BTv1JNj
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE2MDAxOSBTYWx0ZWRfX9GhHH3UeInWw
 xTPlyrzjsOLXxZWBQXSYy5aydv03z1IQenKZFRS2ntJszFY0JtdrBOg/3SQTIMuyQl6VzDqvFG7
 SVCG9+eoR0Oud3/y9QwTdEDDBdmJcOoluSTsvaBD5LYuF8J/J65iadrjecz0iY2Y5MkC4limdCg
 w2G5hQaPxwMOrRAIInLIhksgiuLgru+EhrNniEbb0ydEpY8sntPjqX5eMXVP1RsDnHHitQrIJHj
 LtMeGxOy5BSPt7JjYtpCQwUkplY8A1fFOLlhLAPGTRTKi8gUshjbnie1EXCFGX8OGQsgr0/yN5I
 qbDlKjvrUx0/+VepuUW6725kpAb0SMCOHUJIapHUsjfxQgykaOXdwDQenY8Q0/hnDxqm+viJnao
 GmbMrneyZSQTNh7WcO9OT5eEZ1R0smcXhZQrIdJh4PmuSN0riSMuBVf1mpRHxFIXRMT7cABCMHk
 drm1vfVQbynoe081Acw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-16_01,2026-03-13_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 phishscore=0 impostorscore=0 lowpriorityscore=0 malwarescore=0
 bulkscore=0 suspectscore=0 clxscore=1015 adultscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603160019
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-275906-lists,devicetree=lfdr.de];
	FREEMAIL_CC(0.00)[linaro.org,kernel.org,baylibre.com,gmail.com,vger.kernel.org];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:dkim];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 5D5E1294304
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Mon, Mar 16, 2026 at 04:12:35AM +0200, Vladimir Zapolskiy wrote:
> On 3/16/26 03:02, Bryan O'Donoghue wrote:
> > Add "simple-mfd" as a second compatible string to allow child nodes
> > within the CAMSS block to probe as individual platform devices.
> 
> Why are there any child nodes representing platform devices?
> 
> There is no necessity of it, please use a layout similar to CAMSS CCI
> modelling.
> 

I'd say it differently. I think, putting CCI device outside of the CAMSS
node is a mistake. In the hardware all those devices are a part of the
separate block, they share the same NoC fabric, etc.

> > 
> > Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> > ---
> >   Documentation/devicetree/bindings/media/qcom,x1e80100-camss.yaml | 8 ++++++--
> >   1 file changed, 6 insertions(+), 2 deletions(-)
> > 

-- 
With best wishes
Dmitry

