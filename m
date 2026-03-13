Return-Path: <devicetree+bounces-275181-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cH/QEqX+s2mWewAAu9opvQ
	(envelope-from <devicetree+bounces-275181-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 13:10:13 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A2025282BDA
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 13:10:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 50DFB322184B
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 12:08:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 128993914E9;
	Fri, 13 Mar 2026 12:08:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="RZTuO7kW";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="W5FGVhUb"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DAA2B390CB9
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 12:08:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773403732; cv=none; b=E1JTVq1/x77IhWK+RyC56Fp2P7WVCgbA/SWfLYtXiJg7DNSHbHTKr80LK9FQBNlsU3RGXBhTUIzg7iXehrQO+vxI7Eaoj8nLTJINe029JZK9AcRgQj6zYVUBjvQALFTgnhb72e6ZPLfUYIg9x6PWa7RjaC/CwkMsSeuLennPUYE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773403732; c=relaxed/simple;
	bh=RxCkCzWzRKgloai2lEz648vC7PbTJ2nKZf3T4gJuv4o=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=kbFmYLZwb07RpjA4ntZ+0uD/KBn76JvI6nj1RyjhPLssE/FPK09XoVUp1OIj1N+LJv0LyPxW1p0DZle4/2nS1QoORnbzNOjD2czUOby9yeRAdAviqlw0vJTtgiTUzlHprZ8sPCqcY2sjHCfqHySWf/CiissvBnztU1q9JJTMWbQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=RZTuO7kW; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=W5FGVhUb; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62D7JSbR240513
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 12:08:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=ppInlw+PpBT
	aE16b9MZfivnywOUUI3oPkZlM/KnSAN0=; b=RZTuO7kWH3LiHb8Q7BQ4dnKdIyM
	GfGwzPi6+c/Rt2hfcU0RqfFn1V+nh/dlnC98O0FV/Ejc2OE8rUdouff51jqRzU/0
	KD8kzpJrgPeswp7jy4/wuUW7n8wdvO9zmELO5aFYAPN8X4tyIS4bv9briinNRK7S
	PZoXHUBM3B0hvjCTu3MwnJmL+giWZOf68PdFgk5lhKzNnRQqaRbvbQZniddbqXm6
	EXazBDK7lfQwJqK8zFvFT9SlX4HWaK5jAtIHVsy/3xltTm2p5Eo9qWp+qP3DJE8b
	yn4Y0r0Qbmi8zGxqtZsWA2Y2W8sYymV0Yr7H9fnZuZSH4PFphhv4h4mKSCg==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cve3d8ynu-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 12:08:50 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-35678f99c6eso1530877a91.1
        for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 05:08:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773403730; x=1774008530; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ppInlw+PpBTaE16b9MZfivnywOUUI3oPkZlM/KnSAN0=;
        b=W5FGVhUbz0otP51dRoUh/aAZQYLfIuNjYbmP/GH4U83qTnzbDdJJekUubvdJy43x53
         dsdh0ckRQJ2dRHyxi1vT4r9U8aJUy60gxCX4TPSvKkd/2cQtabQ9uXexYaD84TnhOatW
         ZIlS26mYYr5a9qrZyMT2V90NoIJko4kTHIKiAYE2WTtwzHieNj6LKf67urf6L5Dz754n
         ZYf59iTjCSAbY7VqMwPWUwvoLZOh1H3rx/wyVUSfd6Pz9WjemLnEBw1usL1WfVFKkEgD
         QSoyu3yB8dHkuSU3se608JiPGmcnNwIgRCDq/t2V9UqoW4N2bj3LAJI2yig7BQpBDe7t
         a3eQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773403730; x=1774008530;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=ppInlw+PpBTaE16b9MZfivnywOUUI3oPkZlM/KnSAN0=;
        b=Q8zAc8rStHC24BMhQHcgQT4uS2iDCe1lUTyhvhEQTBz/O8NEq4yGniDMsdvanrVsH/
         Nd36qzftGbs5P+NXprgcmtMoBgISxQLj/2l4jjr4yAFk7Dmu5/v/y/OEImzELZ3MWixn
         4r0q8b81djcy7Iqz9dMxnoK8Baz2asjXTjvGUlvOzKiXwTpexvsPogXyURXtk5kFWrpc
         z9deyd+groSc7YxZT0V6zX9HZs6Bjzw9ks4I0hj4jv2Lj9QhkOg9cn7nXSomzf57DRp9
         JsvQBVnefh2VC6X+EqP7ZE5F7GYMa0UJC+iyMpxGllvs1Ky3/ptsH/7o2DG80W79dr08
         oq7g==
X-Forwarded-Encrypted: i=1; AJvYcCUFtqMcF2kfi5kayB5qLSNggCySRnxk5vSTLNLXdgMT5y2XBr9pXRRqa6RsIyCkST70Ae6D/4I3Ihxy@vger.kernel.org
X-Gm-Message-State: AOJu0YzNXwJKK0xuIlJex+k/wWtG1JFqDs2m7gC48NjuA13tQ5PqdgPs
	anZi+1ctgz0YVE8dxtN4flxEM98+z9a36EvdrOIbzCSmlYVkcZ23vX3xcjvG41LVHkwD9PEa4cf
	xiA5hZoJ8k3KMw+lit6/eF+YPiF+7zZO9gKCCsiuF89h06tdHKTAiDhHu1XInS4Wl
X-Gm-Gg: ATEYQzwB6+Jm1HNL7X5Mnqn/LeiegFZV/oWySpZ1mXleLlw9OPUy1exoUvjNpfxYFfr
	tlo48JHOp0pbQuimy9Db7RRhN6NrUvwDIENj8AUbJlcCjKys5C64klO4VFGzFhlt6evpra0i/wJ
	TXEVXuFFf/5G03Y7JqL4kpJUtYr8KIdSKqIcyP1OkEQVabLBiKpSQC/fO35LhNIb0SQ5l87l6wj
	VGtArAU+hRvYWrGhCDkY7dNEmT4SNGx4tT/2Ogp0dsVMRxEfssgdnMSovFqIGpS14pf6EwTFBHN
	wpJf1LBZUFCEHU7mczypKE64uTJM/K72q7vRfopp0wmbanvF2rN3QyK11f8YbA7rjg62tNZe93B
	QPLFHfCIDWpmIs8V32G681Btv3GmQPxr0d2dE05fwhp97aqx6fj2ARNwXKjfNdzEAAgnd/0xcID
	ZZ5THl43MSSh0JaS3Z5To2v6Am6rN4x07I0mS1
X-Received: by 2002:a17:90b:1c08:b0:359:8c01:66f with SMTP id 98e67ed59e1d1-35a2205880bmr2758115a91.28.1773403729303;
        Fri, 13 Mar 2026 05:08:49 -0700 (PDT)
X-Received: by 2002:a17:90b:1c08:b0:359:8c01:66f with SMTP id 98e67ed59e1d1-35a2205880bmr2758095a91.28.1773403728845;
        Fri, 13 Mar 2026 05:08:48 -0700 (PDT)
Received: from hu-sibis-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-35a02e18f0asm8421945a91.1.2026.03.13.05.08.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Mar 2026 05:08:48 -0700 (PDT)
From: Sibi Sankar <sibi.sankar@oss.qualcomm.com>
To: robh@kernel.org, srini@kernel.org, amahesh@qti.qualcomm.com,
        krzk+dt@kernel.org, conor+dt@kernel.org, andersson@kernel.org,
        konradybcio@kernel.org
Cc: mathieu.poirier@linaro.org, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-remoteproc@vger.kernel.org,
        mani@kernel.org
Subject: [PATCH V5 2/5] dt-bindings: remoteproc: qcom,sm8550-pas: Add Glymur CDSP
Date: Fri, 13 Mar 2026 17:38:11 +0530
Message-Id: <20260313120814.1312410-3-sibi.sankar@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260313120814.1312410-1-sibi.sankar@oss.qualcomm.com>
References: <20260313120814.1312410-1-sibi.sankar@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: Hs1i895YlY0-EKjYgcf37-1_MIzVnZ6t
X-Authority-Analysis: v=2.4 cv=FLwWBuos c=1 sm=1 tr=0 ts=69b3fe52 cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22 a=EUspDBNiAAAA:8
 a=BVTLK7zpd-CcKl8eL14A:9 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEzMDA5NiBTYWx0ZWRfX2Hiyqw7F9B+s
 PSZ7tlyjk9pAH+Hu+MsNhoslAaKpwK//JRmnRPhvmc64tFgxtF7QTMV9xEUFoQmLbrMtqcNpRPb
 2I+fgcjCk7ISB0BuOlbtOZ2l7fawgsydgU0Rg07EUj6V8XLBkgw4PrDtieVurE8dQhNC2z1P5F5
 4Vumzt3V2nTJB1ZP733TXDC1C1Au6tyby3swknjj+1s07M0nwBk3OGSGZokfB6VS10gvNqqmAgy
 Ho7eYBzkcfroENq+R4udUxMFcH9Ttq4n7dn6fs97pafyhOzr9zyJut8us3aZj3CtxfJzd/xKOAW
 mTpOKqHQG/jo5R9ZfFXsCGL4XbnkqVkTSyC2+YXMyXpB8A/aoqcZfLajBs/D9CZUkKkGqgP6Rk+
 uYmkxoApkgS1LCmKOW9KgqCqaNmXvAK0rR95NCHF2r4N6nb/49cDVi76dqRQc3soC4lqXvSeYW8
 Q9EmgzGaYFiuqYvlYog==
X-Proofpoint-GUID: Hs1i895YlY0-EKjYgcf37-1_MIzVnZ6t
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-13_02,2026-03-13_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 impostorscore=0 bulkscore=0 malwarescore=0 spamscore=0
 clxscore=1015 lowpriorityscore=0 adultscore=0 phishscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603130096
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_NEQ_ENVFROM(0.00)[sibi.sankar@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-275181-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:dkim,qualcomm.com:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_TWELVE(0.00)[14];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: A2025282BDA
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Document compatible for Qualcomm Glymur CDSP PAS which is compatible
with SM8550 SoC except for the one additional interrupt ("shutdown-ack").
Similar to the Qualcomm Kaanapali SoC, "global_sync_mem" is not managed
by the kernel so it remains unlisted.

Signed-off-by: Sibi Sankar <sibi.sankar@oss.qualcomm.com>
---
 .../devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml         | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml b/Documentation/devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml
index fb6e0b4f54e8..6a29d239ef41 100644
--- a/Documentation/devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml
+++ b/Documentation/devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml
@@ -35,6 +35,7 @@ properties:
           - const: qcom,sm8550-adsp-pas
       - items:
           - enum:
+              - qcom,glymur-cdsp-pas
               - qcom,kaanapali-cdsp-pas
           - const: qcom,sm8550-cdsp-pas
       - items:
@@ -103,6 +104,7 @@ allOf:
           contains:
             enum:
               - qcom,glymur-adsp-pas
+              - qcom,glymur-cdsp-pas
               - qcom,kaanapali-adsp-pas
               - qcom,kaanapali-cdsp-pas
               - qcom,sm8750-adsp-pas
-- 
2.34.1


