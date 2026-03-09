Return-Path: <devicetree+bounces-273138-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KNSELkw7r2kPQQIAu9opvQ
	(envelope-from <devicetree+bounces-273138-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 22:27:40 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 622DF241AA7
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 22:27:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id B974C3025113
	for <lists+devicetree@lfdr.de>; Mon,  9 Mar 2026 21:27:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B244C367F4F;
	Mon,  9 Mar 2026 21:27:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="YAhVOMD4";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="OWc1SzgV"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C4D836B06F
	for <devicetree@vger.kernel.org>; Mon,  9 Mar 2026 21:27:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773091657; cv=none; b=pGM2w3yb+0CRhg4nEU4ETu/Di3j9pPHWUsaWp0r6UgTUHuHSuzHK0BZUt4eqvlJzUqSTcRIu7zs4eUgTY+WRox4h+nnbN9lHcRY/OP93zrEN2Z0R7U7Pe7XoyPHn4KWsSqOzH+pZwSxWVIhW/c9FJEwYqnPprGYUuTh15poTJ5U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773091657; c=relaxed/simple;
	bh=Ia8Cbh6/+Kbk0y8gTmD1N8Hdl5uzj82V+GpajWlwRsM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=imDytqgpNt4qQB9kCcnpKwnjUYsUHnxYuNQa91ApbTZqoQ9XRcydVPHFhqhGQd92PCYPy/vNFHgSXppw+/jEljkzI+UGNNgu74OYfzBE1DBegIDHuuojuyQNeQug2A11uC0GXMd9GLBLsgYlfWq+fmws1CdZQO13Y5YSuSRtksE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=YAhVOMD4; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=OWc1SzgV; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 629HBlq6296222
	for <devicetree@vger.kernel.org>; Mon, 9 Mar 2026 21:27:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=NffRds7Kdw3GfATErgD2BYuO
	9VlL9883uve+FpAdSz8=; b=YAhVOMD4sLCdGdkCsQPj9hbYj9hbLiaCIGouq/7f
	Lqk1Db6fNF1xkdLUr89TySHRsLlKAiLU/8yzXWkMOqmy2CnLr/1OmSDWynltm22E
	mm6f3Ai+kC4tfsXe4vsbHWUpdIM1gDdh/r4vN5bb3ZckWlHis/y8bXj6RBUMPMHa
	SqBgRwSAxKuxpUQgzw6qdKZFUgAMUh4XUSQELO/ark+PVDrRPBiRR9rkiVyCd/QH
	VIO//xZNIRYTCZEj2mGtfDCWq1BYc9CcsoDuIqn4ATPITWhw7hBGcX5pNTo29XeN
	0gjMcv2vjW5ajMtq36UzX3crjJl1WO3JQIMSMh9/TNlihg==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4csyfy1ht7-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 21:27:35 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-5090e08dcfcso138458511cf.0
        for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 14:27:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773091654; x=1773696454; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=NffRds7Kdw3GfATErgD2BYuO9VlL9883uve+FpAdSz8=;
        b=OWc1SzgVBDvzqoNTfu7liKe9O4AigD0kkKxYoFdEysEXK4XRx5C0sAWShUruFbLq5U
         h9RhMAwYF8oXxInen37MaDTpdyBrkOE2LOOXwtdfOitWu527x8aPKfXmCwO71CvxpcB/
         Z+kVAtJAmqsUUrkPtSQb1+SSd/xlkGv5vB+jL+nQlhSZij8DIhQgQiSi244UkzMpKJzn
         4STEBk+TXZbXxaZ0KIwfvIIo+Cu4esYM/TVnV5qFQ+USOVNV7Fk74j7nQPzZVKoVygBB
         7fnoAtlPSsOZDWYW4Cm5DIXpAS2XOm+G8nMwm30z+j2MP6HTDuYEzpRBd9yodaeSWBzm
         ntUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773091654; x=1773696454;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NffRds7Kdw3GfATErgD2BYuO9VlL9883uve+FpAdSz8=;
        b=naWvgmiAmC2dssgqVgmxkyRxx+G91yyelR0FkDBYgqjqRbJJwYRcvI+n/rBQzNJgq8
         3iRsuk7iM3vNgEo/xOc2Ax+4FN8heZoFJm1fNn7p0Fo28uU1h6ZTT3fSEOyYIQmZ+K6D
         /JO3miCm68Dpo2DkdKiNw7rK0zdGJ810bLp3HvZAZvgQa/MrZxxKl1XyEAIBn/vUtMN4
         dev+yxoRB8SwI5L48suEuzM4EgmoyrrE6Ge4XhI52m3IquXdirzvnfX/bAJIelAUiGnu
         U6YfcF9rn7qjcjQDt72VwB8SDhwCemnYx8ZTLsi/X0ZrsfoDAV5OYB3toQZyL3n/Mrln
         73Fw==
X-Forwarded-Encrypted: i=1; AJvYcCW64l3LuTzOYcGWY0BHQQBNTP0wlkdZ9uPXa6gXyR0mtCxbi3XYqQj1Bb/QupyuZg3GuxrL6nmZuK70@vger.kernel.org
X-Gm-Message-State: AOJu0YwJpyR79fmdyitejmmlz2otwKOiUA39DiRtxbPGFRXFj0EnPsfs
	W69tY5sJDG6oTyoy93es4HGivXWrSACmnz85yxAGTm42V+sIh742B95Xil2rlen3KjLBxnZwH6x
	FX3goe1PGZjfF57kn6JcIa2SOgkdHpaCiYTcq6VKb+XWrXO3wCoyZHHG2QN7zGfuu
X-Gm-Gg: ATEYQzz5uA/Pq9AsmFgfcs0UWFGe/X4zwJo1HURAnmasqG5273+cEeC4vilgc8dcJRv
	/Asn2pPMnoz7SBC71l6pWqSbzTjfWR1art05/UskvFgwZZ3u2fr5Sicz6JyWTPKvaxt08PRTjfk
	vOawnp/h9GkMGZh5vpyuWm/nHUVLHIn6WE4AlE64MA9Ul0kgU6OIP9h723depjzH+YFu5Gn6qgW
	3qa/NQqtEWjNnmgKdsBTP+sFz3llHzw+BAcNvIQNknyyWcNtlvS+TEciHJWGLFuOiUZEaOLTqdq
	927prudfJ3j53NmKDWDAn5sUywaTKp/bzjh0Fr/R25jwiyXrGynF1zts56PbKKp4N332may8zBb
	QiM3hMcLGsJ/tFGRc0aIKkUc04Tb94hFK29/uBlaXPPtoSDAnVFdmNmEzsaAOJcrlatgdQis3FH
	HTyvjkOCf8azqU/KkL344FCN27U2ZXiCoaXIk=
X-Received: by 2002:ac8:5a55:0:b0:501:b1d8:637a with SMTP id d75a77b69052e-508f4961581mr160517171cf.61.1773091654323;
        Mon, 09 Mar 2026 14:27:34 -0700 (PDT)
X-Received: by 2002:ac8:5a55:0:b0:501:b1d8:637a with SMTP id d75a77b69052e-508f4961581mr160516981cf.61.1773091653855;
        Mon, 09 Mar 2026 14:27:33 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a13d085efcsm2398578e87.64.2026.03.09.14.27.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Mar 2026 14:27:32 -0700 (PDT)
Date: Mon, 9 Mar 2026 23:27:31 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Abel Vesa <abel.vesa@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Taniya Das <taniya.das@oss.qualcomm.com>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Maulik Shah <maulik.shah@oss.qualcomm.com>,
        Jyothi Kumar Seerapu <jyothi.seerapu@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Sibi Sankar <sibi.sankar@oss.qualcomm.com>,
        Pankaj Patil <pankaj.patil@oss.qualcomm.com>,
        Akhil P Oommen <akhilpo@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>,
        Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>,
        Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>,
        Qiang Yu <qiang.yu@oss.qualcomm.com>,
        Manaf Meethalavalappu Pallikunhi <manaf.pallikunhi@oss.qualcomm.com>
Subject: Re: [PATCH 1/3] dt-bindings: clock: qcom: glymur-gcc: Add missing CX
 power domain and required opp
Message-ID: <qqizoxngoey4ij6757k544tssarhisyj4rh7jynf6srgoiu6vi@lhyhu4n6w4s7>
References: <20260309-glymur-fix-gcc-cx-scaling-v1-0-f682c82f116f@oss.qualcomm.com>
 <20260309-glymur-fix-gcc-cx-scaling-v1-1-f682c82f116f@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260309-glymur-fix-gcc-cx-scaling-v1-1-f682c82f116f@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA5MDE5MCBTYWx0ZWRfX/CrEfj2xnhMT
 Gp8Atw09Dx4WcrFQqu3DSPSMKRlsOC/WfhMmr7xRLlDO44yVmv28sjOndkhVr/wh6OYbCFSEsV/
 0mT7l+LWlCGO4JF5xRPeoVv3DJXqm1KYkE+cyBUQ1WIocHGBva6qgv3k5k4kJavzkNyb/nYiYgh
 4sPckrg5Xr1NpZKs+wn0b0Vrf3+nN+IJVsvtLjToIiUuRWcybTb5sXBvYw5iP1L+ZZbKHoUqWKy
 4dXVHaJD4/0OdiEXlUUGdIbll23zczmqGhCi9U8+We8CNk0aJRKE8oc8FCuXeg2Xiu4fhDq3BBL
 4bFi8e9dmmfm25bZQB4XOzmUKPMeBiX6JhACpLRd3j4vgsJlASmnCgxufXNcy+1+kPFPgplvn5x
 GahMNyr7sYAZGLwAGGNlUrmYkEX+ejU6LLY6fazH7vc2iamXJ3QBgVqjDNZiZ73OR43BfP4SOE6
 RhOga1ZQ0WLPngAO6iQ==
X-Authority-Analysis: v=2.4 cv=OcmVzxTY c=1 sm=1 tr=0 ts=69af3b47 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22 a=EUspDBNiAAAA:8
 a=G8-z_bGVGM6vuBRgOwAA:9 a=CjuIK1q_8ugA:10 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-GUID: VPRNZUq-iSz9OsGEJ5MzMD6PRP7KNrtm
X-Proofpoint-ORIG-GUID: VPRNZUq-iSz9OsGEJ5MzMD6PRP7KNrtm
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-09_06,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 malwarescore=0 phishscore=0 clxscore=1015 adultscore=0
 bulkscore=0 suspectscore=0 priorityscore=1501 lowpriorityscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603090190
X-Rspamd-Queue-Id: 622DF241AA7
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-273138-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,qualcomm.com:email,oss.qualcomm.com:dkim,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCPT_COUNT_TWELVE(0.00)[25];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_PROHIBIT(0.00)[0.1.134.160:email];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

On Mon, Mar 09, 2026 at 12:06:17PM +0200, Abel Vesa wrote:
> It has been concluded off-list that the Global Clock Controller needs to
> scale the RPMh CX power domain, otherwise some of the subsystems might
> crash or be unstable. So adding the RPMh CX power domain to the clock

Which subsystems?

> controller which will result in all GDSCs being parented by CX. This way,
> the vote from the consumers of each GDSC will trickle all the way to CX.
> 
> So document the power domain and the required opp to that end.
> 
> Fixes: ee2d967030fe ("dt-bindings: clock: qcom: document the Glymur Global Clock Controller")
> Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
> ---
>  .../devicetree/bindings/clock/qcom,glymur-gcc.yaml         | 14 ++++++++++++++
>  1 file changed, 14 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/clock/qcom,glymur-gcc.yaml b/Documentation/devicetree/bindings/clock/qcom,glymur-gcc.yaml
> index b05b0e6c4483..94a911855776 100644
> --- a/Documentation/devicetree/bindings/clock/qcom,glymur-gcc.yaml
> +++ b/Documentation/devicetree/bindings/clock/qcom,glymur-gcc.yaml
> @@ -65,9 +65,20 @@ properties:
>        - description: USB4 PHY 2 pcie pipe clock source
>        - description: USB4 PHY 2 Max pipe clock source
>  
> +  power-domains:
> +    description:
> +      A phandle and PM domain specifier for the CX power domain.
> +    maxItems: 1
> +
> +  required-opps:
> +    description:
> +      A phandle to an OPP node describing required CX performance point.
> +    maxItems: 1

If you only need to use CX as a parent to GDSCs (BTW: now all GDSCs have
CX as a parent, is it expected?), then why do you also need to case a
vote on CX?

> +
>  required:
>    - compatible
>    - clocks
> +  - power-domains
>    - '#power-domain-cells'
>  
>  allOf:
> @@ -78,6 +89,7 @@ unevaluatedProperties: false
>  examples:
>    - |
>      #include <dt-bindings/clock/qcom,rpmh.h>
> +    #include <dt-bindings/power/qcom-rpmpd.h>
>      clock-controller@100000 {
>        compatible = "qcom,glymur-gcc";
>        reg = <0x100000 0x1f9000>;
> @@ -113,6 +125,8 @@ examples:
>                 <&usb4_phy_0_pcie_pipe>, <&usb4_phy_0_max_pipe>,
>                 <&usb4_phy_1_pcie_pipe>, <&usb4_phy_1_max_pipe>,
>                 <&usb4_phy_2_pcie_pipe>, <&usb4_phy_2_max_pipe>;
> +      power-domains = <&rpmhpd RPMHPD_CX>;

= <&rpmhpd_cx>;

No need to import another header.

> +      required-opps = <&rpmhpd_opp_nom>;
>        #clock-cells = <1>;
>        #reset-cells = <1>;
>        #power-domain-cells = <1>;
> 
> -- 
> 2.48.1
> 

-- 
With best wishes
Dmitry

