Return-Path: <devicetree+bounces-267768-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kC7COBVinWksPQQAu9opvQ
	(envelope-from <devicetree+bounces-267768-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 09:32:21 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 353D3183B8B
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 09:32:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id D153230055E5
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 08:32:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CC216366834;
	Tue, 24 Feb 2026 08:32:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="KAbBfwva";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="HyxABrLF"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A84D366813
	for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 08:32:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771921937; cv=none; b=tJ/mjCV8t3HINqNW6m6pxIjUeOsOFqC1qZMHL3ky9lev0MnTpKEYVYzWL4S3brt49blvnxmpww0I7yMqCkPg9HlJlDazlPW8i2a7UyY/jtmIYSeOynuSlTenw4gqkKFQuccFIGyhCu585utS3VgpPWJNWB506IL1GsceMxlFMrA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771921937; c=relaxed/simple;
	bh=6RCrh616U7vYgiCSgrgXGgoZWHtvW4U7qcEBUGz0fCk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=lEtLcuiGSSJx9extaXR5pLCijiYfZ12bD+jfklk1/o0NR3XVgY6D3gInBnKYXtLle0f2MxqoS4+fYyQulGBTs+QjYteZywKrI4ApEtXvXvX6aBkAaLIJgfqPm4X6VSwwCYxvnm2zZ1Prqu/Og8HhEYKhIJSOEphF0PpL0AISRGI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=KAbBfwva; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=HyxABrLF; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61O4LRio2012825
	for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 08:32:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=+HNa961znk3JfzZLWEYNK+x7
	vHC2NAm/Djus3UwnZsg=; b=KAbBfwvalSpRulAeu9ys4zttIx5qGIFPvvMAq6r8
	sm8R6ehZcP6y7jD/ZqRexJIPi3+1y8UcmNRCWtxt0P8Wx8Z8X9cLcfjXJvKjVoeL
	faW9vxVKe3+wUYr4vux8izSF9ct2vOeITtSZwZBFTbrYC8AB1FxW71B2kzpLKC4U
	nEO3TdNWgFGxQHCJuKSTuquZWbprbz7M09qmH0HHkx2G3k8S6wrqu//wM5ovxwQw
	nx6zkmowgFVf71k79Tuy3PcSmvLPEoImRDtW3EuXwwz/9N7K9Z1ETO4vaCNOgzky
	yq28NtNtfmbEV3ZSqd753I775srAac7ma914pBFkssqmgQ==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cgr69jwyx-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 08:32:15 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8c71156fe09so4249849185a.0
        for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 00:32:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771921935; x=1772526735; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=+HNa961znk3JfzZLWEYNK+x7vHC2NAm/Djus3UwnZsg=;
        b=HyxABrLF4hfTaODQWUjATC3F1cj9Udtx+sg3BAjHLtwbXU55DTHrFC9SW+R10wpifH
         5G+xUMd9ItGkdJEqVBRNEzxS3rBJYJqd6oYYs2IZPHu0FIWAa42enRX3Jgr9sSFh6REZ
         kFiGxb2d/cXagyxEvs1vUXZk1lyd3VOjs8AmNdAQoVWIkGhUYTMj+0iDbcTbWyK8vM3r
         qvdzeSJxSBGXVcxQpp5CJBqwF+J0IzkrSo1zogxxjrT26I9SLyqSo93bwNi06ilyn0ot
         xcnXC29kgkUvUiZbeWyzcWhY6MiRFDRCADPaloUZsOywCDhRMNV1Vin7m6zTN6zJsKmW
         lT0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771921935; x=1772526735;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+HNa961znk3JfzZLWEYNK+x7vHC2NAm/Djus3UwnZsg=;
        b=vUQulqQHWumW+6m6lVJtZk3a4HfJGxV4huByPMUlaVPUg9TlCzvN0q2GmAug7dbPBv
         ZTPzOZG0FljG9YvqufpQOk2+XQwBFzoVGUbW7Dp81r/6sfbIUNtaPtn2jzUcr7sAurHu
         JZo9l8vJ82Opc3/IDlZ3nmEogfS0YWESD3dCXEIsGutgGKnYX+2y345VeDw6NlKl/ac9
         RbAEogNdC33yastj5HHl8uFd2gThBK8vN9HkkqLm5GI4GrpqUfJU9ezKRpKR3eo4W/ob
         Fu8he3gkvthYA+02YXnhpzwDiVitjhPoGawjCN0AIib8tcs/996tuWhK5siK/pRgEgoz
         xSZQ==
X-Forwarded-Encrypted: i=1; AJvYcCWLT/3e7P6CL/lE2kz8K5rf+2KOO8/bdhggiZNZodf/cCEctH0mgiw1USfguJKBOVdg7z3yG0Wm92ku@vger.kernel.org
X-Gm-Message-State: AOJu0YzSWHuJirosTlrSWc4yrTtoS1h+Uw3Ii3upQx/+gut0rNh/kt94
	/HjV5LEkVgDT4sxN73NXhj0Zc4M6S+yacn02BSpQLUekf2BuWIWr+en7/9ZhyW/iNKJeinCHT3b
	LabPifhuJVluLO2kOuB6+5W+p3N5jNGAkokfduscBdf2sJli6UIfbKbAnyEjxM2qV
X-Gm-Gg: AZuq6aIi1eJmzRk8AEIyKOJAAtD7cqiKWfkAlply4Dhhgg2DESLJTXH31KbqoS3deCa
	8WmMGyokkqKvH/pUjFFy3riGq3E6idAwAa30R3RtwPUtTsQx9GHUkoEALUb4KCuXqIARKX3LHGB
	ee+Na72vWJI0NEMxN6GPHTGmc5P6+jWhv0hAWdZ+UBXKl5I7mzb7wxOi7im8KnDROWeQYNMzq0Y
	vZbE58pS3g/sAwXcyaWBJkN/L5UWSlY25GryYfpckklqSOYfzQW8MFP4MEKusm3eFGqD/yoO/a5
	4IDBg//wey4OiE88n2lrxqQRpVuTTiAReDyBXkmkAIrLskC7fsPobcENRizXYh1VZd4twV9hY14
	0gSebIGRAbCt9HsSt6V1dHBUCmggWWWFBUrK7
X-Received: by 2002:a05:620a:c44:b0:8b2:ed29:f15f with SMTP id af79cd13be357-8cb8c9f3a90mr1531724585a.21.1771921934739;
        Tue, 24 Feb 2026 00:32:14 -0800 (PST)
X-Received: by 2002:a05:620a:c44:b0:8b2:ed29:f15f with SMTP id af79cd13be357-8cb8c9f3a90mr1531720485a.21.1771921934106;
        Tue, 24 Feb 2026 00:32:14 -0800 (PST)
Received: from oss.qualcomm.com ([86.121.162.109])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-483a9cb4bb3sm250878505e9.14.2026.02.24.00.32.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Feb 2026 00:32:13 -0800 (PST)
Date: Tue, 24 Feb 2026 10:32:12 +0200
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Georgi Djakov <djakov@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Sibi Sankar <sibi.sankar@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: interconnect: OSM L3: Add Eliza OSM L3
 compatible
Message-ID: <jpce3oli4ngfrt7hk33naatjvlhjkr4j7vzo2uf5uux2dswcoi@fs6lspkitpbb>
References: <20260223-eliza-bindings-interconnect-epss-l3-v1-1-fa83970d60ae@oss.qualcomm.com>
 <20260224-hilarious-tasteful-narwhal-c492a5@quoll>
 <2dnws4hpakt4oxhbfpcnu5ga45mmx4fjxexou2gaueiqaveeyn@itiyzldq5cxr>
 <08471da2-8577-4114-ab26-bcbc81536999@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <08471da2-8577-4114-ab26-bcbc81536999@kernel.org>
X-Authority-Analysis: v=2.4 cv=O6A0fR9W c=1 sm=1 tr=0 ts=699d620f cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=oauzzCmhM186DRC0Y2yWPg==:17
 a=kj9zAlcOel0A:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22
 a=EUspDBNiAAAA:8 a=-5qs52AMC2amogaWbVkA:9 a=CjuIK1q_8ugA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-ORIG-GUID: 2FGfoJRNRQFF-KrbrN_eC2ksTclYiW6J
X-Proofpoint-GUID: 2FGfoJRNRQFF-KrbrN_eC2ksTclYiW6J
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI0MDA3MCBTYWx0ZWRfX2o+Jqw7SVDJa
 Rl/CxdndTJ80AU8lNik3cG0IhRBXY5ooHgTjewKZX0GDP7rDveipiN/afbgBByJk97PkWMGmjU+
 L3t6Z+QfD1okBQBnQ3h7acAPtBbHgSfGcE+6DTLJKPtai2TfXVekrOMKQh37Ibf53rdhYCEH8My
 hDwcrBnYrNVLx7TTpZ6fZR74eSGK9PcLV0Wfc9VxiVRBDMhHRadJ9EBAgrBa7IHFxxtjPMOHnsY
 8i+3k8IkodfJWZmpak7OdSIypY5mBp+B0bhiRWsxJHjrQzzjcJCWQ7IJnCS9s3mBtw5ZlVCet/Y
 bNP1hM9fX+Q1Y94N75hoydZd4x5J1aXI8VUBmusPUqkFkzUZsWxWyyN9JR+Aa9WJcXPnuF35xwd
 oAK79AGR3/eCfVdSOd9JNel0W/3CbhBsV7n3fPRjt5XP6n/ssB+49QQpImwJ+HHoIMUcpzcrT6z
 aGSzZM51z0md8iM9jEg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-24_01,2026-02-23_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 clxscore=1015 lowpriorityscore=0 adultscore=0 priorityscore=1501
 impostorscore=0 phishscore=0 malwarescore=0 bulkscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602240070
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-267768-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:dkim,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[abel.vesa@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 353D3183B8B
X-Rspamd-Action: no action

On 26-02-24 09:14:01, Krzysztof Kozlowski wrote:
> On 24/02/2026 09:10, Abel Vesa wrote:
> > On 26-02-24 08:29:09, Krzysztof Kozlowski wrote:
> >> On Mon, Feb 23, 2026 at 10:49:04AM +0200, Abel Vesa wrote:
> >>> Eliza, similarly to SDM845, uses OSM hardware for L3 scaling.
> >>> Document it.
> >>>
> >>> Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
> >>> ---
> >>>  Documentation/devicetree/bindings/interconnect/qcom,osm-l3.yaml | 1 +
> >>>  1 file changed, 1 insertion(+)
> >>>
> >>> diff --git a/Documentation/devicetree/bindings/interconnect/qcom,osm-l3.yaml b/Documentation/devicetree/bindings/interconnect/qcom,osm-l3.yaml
> >>> index 4b9b98fbe8f2..6182599eb3c1 100644
> >>> --- a/Documentation/devicetree/bindings/interconnect/qcom,osm-l3.yaml
> >>> +++ b/Documentation/devicetree/bindings/interconnect/qcom,osm-l3.yaml
> >>> @@ -28,6 +28,7 @@ properties:
> >>>            - const: qcom,osm-l3
> >>>        - items:
> >>>            - enum:
> >>> +              - qcom,eliza-epss-l3
> >>
> >> I see EPSS, not OSM here. This is also list without SDM845, so I don't
> >> understand explanation in commit msg at all.
> > 
> > So there are two issues here:
> > 
> > 1. EPSS bindings are handled by the OSM schema. I believe this is by
> > design as they basically do the same thing. Interconnect providers for
> > L3 scaling. So the compatible is in the right schema.
> 
> We do not talk here about schema or bindings at all. Look at your commit
> msg:
> "uses OSM hardware"
> so again: EPSS or OSM.

They are basically the same thing.

Will use EPSS instead in the next respin.

