Return-Path: <devicetree+bounces-270480-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SLesEnTepmlkYAAAu9opvQ
	(envelope-from <devicetree+bounces-270480-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 14:13:24 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E83C1F0028
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 14:13:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 13B74312A330
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 13:08:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D711C32FA3D;
	Tue,  3 Mar 2026 13:08:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="NNe6RT5V";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ZFP1HgB9"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8172E421F1F
	for <devicetree@vger.kernel.org>; Tue,  3 Mar 2026 13:08:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772543301; cv=none; b=mOwUdJugj40ZkggmXXAEmGAJo6RWT1XuOawU+PBimpT3iM081EU6LOQNHKuD4x8eCFAvkr/zhsTIetUsirs7tb/XH5CQ/ix3zaXfr27Gfu5TZ5Sq2SBgVDOGLKMxN4mkmqBvL0+HZ7XuK+/d4cHIqVRvLe9QxDTwCZqootmbMQs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772543301; c=relaxed/simple;
	bh=8F4yj9WgpcRrhlxe+LM9CP/vQbqufNYhRkj1ketDKcE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=tg4zgIF6RCEFAo0lyVvTm32HTCro+OBqu6ricBAyLgNCr4aIYTn1tAbvvmfDF3gKiuBs5+hy0Iko+xU3qvaJ+FIgSmhwdcl5xzCQhXs8bF4/zBj8VMnGkEq1/yBhd9WyOmyOZA452rCQMd9m7j3vUviidDr5o2Ycra3bhEV6EZQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=NNe6RT5V; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ZFP1HgB9; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6239mqlh3995479
	for <devicetree@vger.kernel.org>; Tue, 3 Mar 2026 13:08:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	fhLTcvACUzqCHczJcY2K0aqA9L0fy2FkKaMku7rR94o=; b=NNe6RT5VLhOuvfZT
	BIIfpntJNBry1k1s3DPkKbHc5PO00sCILrxXfyZTzsOLiV3YULjo8YDKpYzWG96W
	STm0AK/xOdrW58x1yBddhfkFjZxaBfZPECavcj7Zlw2UPqO7Uiwo+tyiiW3p6Xhr
	Gse2tAJYud4HABopHkt9AV2npIOBNkhtAO8ddEA4vyvJVSrd1Z6oDVp5EbnwjoNb
	bRoMZkvvKshaXDlETxjm91GjMTEM/V4SGVaPdeTFIJbNd0LOggzyXC9WHvNNWVUN
	TYaUmwNsTAlY5twWpF8TvHv7C7RbfFpFyEW5dbEZxIPNCCTByO0VPFjcSHqyISfg
	7Gau3g==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cns5fsha7-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 13:08:19 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8c882774f0dso3805582785a.2
        for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 05:08:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772543299; x=1773148099; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fhLTcvACUzqCHczJcY2K0aqA9L0fy2FkKaMku7rR94o=;
        b=ZFP1HgB9rtFcEtmeQy1wmkPg0+Pd0ITu7N8gyU51fJ3MTnxrEcA3iyqd+e+mU5zF45
         fGQ/8STP1rQuuC5ocncDNB+sUgn231sYnfdyVcivtntmncvxrA6vz+WD0gR9lkFO3NnC
         rFn2k5MHwPhk09mvxAMZkX2RtfD2jBQNLoMYkUZXVbG11ASbEiG3IJRcNIzZQnp7yiXk
         rRBjpnqSfc8TIxKKxUlCCtPObnyFj4R1QEodXMwHmYu/figWEUcRl8ewT52Ltv1tALD+
         tEtM9VlwgsGSWfjP7U11yXnz+EJLgy0rHeWa1cn79dYY4CVa4WM2Yq+egcNGfnKoEdBy
         Tqjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772543299; x=1773148099;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=fhLTcvACUzqCHczJcY2K0aqA9L0fy2FkKaMku7rR94o=;
        b=WUAk0mSdNBOFLLCeXkAkc16WTJ1EyH4PtKBxJb7bSgtBPGDx28PY0NQH4tJMDBS/dy
         pAqrgP+ImTORbAADlrUKqy3/dPvFh3nlPWqJgm6898LPMZg0ZoqRBCvku/6Gq0RwXLu7
         qxoaBv6McvTTiV15rwaV8GsZzg33Dl3Fp3rCkKykRL2j95lJ+RDXUirquy3RjfMIaIBS
         LxmFaFhqJeUsyqqyjBeqA4RhG2XmtWAW4SZpupHbzm7k8+rpGgf+UNUY/W17gl5bn7CL
         0eFJnHu5BflUekI3j0Swy5e4tJy0ooQOeShkLahfm2Dk9V6Jhqqrl2Y5J+24HWq7U3wG
         bFEQ==
X-Forwarded-Encrypted: i=1; AJvYcCVlILFrkEWdDZF7iikpGXRiDPWi1T+wZxHSXJJHldIAYxdn+52MGRzAgQej3q+0mfPhFoRmU1uGtdbQ@vger.kernel.org
X-Gm-Message-State: AOJu0YzS3KKw6y4QRCmrOXMeW9bszR3jywWKlGGda0j3DxPx1p/EfMFp
	sa8LQwxuWsd2KJQAXyR5CxezCSnBJWVJY4fBsrQol5YiF3VYd3rjuEOi95fPwpwjGceKzQkGSmp
	lgw5K6TMAknCmKUe7WZ8MHGv+pMCqD4KhJePMNuloM6LDf9oxXTdAcCqRCQzdHbHw
X-Gm-Gg: ATEYQzwczgg+wCtNr9JtESEVXSJMpHu6uEnFKGgG3U/+Z0vJ5qC8k75kgPI74Ca0M2K
	a21lRPJZitjWvHxw/mAsgowFFnihlvwoJ8huL5ueYLm4aaHdaF474qceye9TJpv89qbTtwgHI/3
	7e9Q0uCEogNHjn69PesBHFgfz3+cz65O8U0QyEsxWK15tOAQ3SEsSrUPThTC0dMOW2x4ZVppYAx
	9a97j0soZQE051VbxzQevnzdxXp0ptw7cf12UBpr4Z9EsT/kVpCviQKc+lXatG343hh93tiucoz
	1Ot3Dxv4fvtLxL6f6mB/8+ParW3A1J47amZrIj23DKe8hZAGzRz/BFyWWxv1DeUaiH7hK3fj6AL
	Rzih34J5rhduOtl4nEdWtrtKFyRAF9ReuLEAHznrV5QMj
X-Received: by 2002:a05:620a:298d:b0:8b2:7777:f662 with SMTP id af79cd13be357-8cbc8e1a5a7mr1865320085a.64.1772543298819;
        Tue, 03 Mar 2026 05:08:18 -0800 (PST)
X-Received: by 2002:a05:620a:298d:b0:8b2:7777:f662 with SMTP id af79cd13be357-8cbc8e1a5a7mr1865314785a.64.1772543298338;
        Tue, 03 Mar 2026 05:08:18 -0800 (PST)
Received: from [127.0.1.1] ([178.197.219.94])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-485126563ddsm26253495e9.3.2026.03.03.05.08.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Mar 2026 05:08:17 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Date: Tue, 03 Mar 2026 14:07:53 +0100
Subject: [PATCH 3/8] dt-bindings: display/msm: dsi-controller-main: Add
 Eliza SoC
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260303-drm-display-eliza-v1-3-814121dbb2bf@oss.qualcomm.com>
References: <20260303-drm-display-eliza-v1-0-814121dbb2bf@oss.qualcomm.com>
In-Reply-To: <20260303-drm-display-eliza-v1-0-814121dbb2bf@oss.qualcomm.com>
To: Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jesszhan0024@gmail.com>, Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>,
        Jonathan Marek <jonathan@marek.ca>,
        Krishna Manikandan <quic_mkrishn@quicinc.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1090;
 i=krzysztof.kozlowski@oss.qualcomm.com; h=from:subject:message-id;
 bh=8F4yj9WgpcRrhlxe+LM9CP/vQbqufNYhRkj1ketDKcE=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBppt0tSbWDjI4/dlk1HRlsDCAOz5JoDtNTCTLCB
 yW6WwGdzF6JAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaabdLQAKCRDBN2bmhouD
 12QHD/9BCO8SDyjv2U42Sa/8wPJ/r0hVx/bkMgsqQGHRVZnMCqqbWINvBusv+uK5VrN3oYfxTa7
 zlXbM0Cxe/Exd+RXF1ieujaTxQY83z69Tmds3LdEuL28fF20SOU/h1JZmwq8PWP2lwfFkuM6uza
 JEC9CV+9V04XjmIND3qC8Mk3f32ngvQQ+qY6BBLtAO5XMREfAAaAWGBwwa9lU2jEpAFoovLE2yg
 nhNChpaFM39/QLWX7wVaX9mJp9jO3W0FoHCTsPBAcyZPMGrzycOFGaGGKTHCmkbkyqitqGH/0hV
 X3i/sLoOytUxzDt+28r7oCGXUH/xFplJk6Q/Cdw5z8poHKaB2fHKFgGXSmEYiwD8zzubZuBa/bB
 g9Rahn7CbCKLtNeZ/dqWHY29EXie45jwgYB5eAz1P/Zd0BQaNEIA03M4sw00dyNO22s06kymzzj
 o+uPpICMpM7sLkqrLgpBR+98DCtEWNbF1Ho/u6jNEQ+LZ9UCNjNdP+PjMfwcRlHedItkPUfxtXt
 dCiMlCsfsttIP/cD4uUqXFh2O+S1fk6bqDGvs0alx/BG6YQmneyCyKNFyCcvB1/MS+scFZX+fsb
 gOCTpjhcUaKiAaGIvfT25fgBNyrDUFbRssGxDp9Oxz89/QjzsDLa4A6ob/W4BRcmVBOTsMFLJ2Z
 Wp+gKdsDXg0Tm9g==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-Authority-Analysis: v=2.4 cv=Pv2ergM3 c=1 sm=1 tr=0 ts=69a6dd43 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=gOEeR9iKwsj33Yj5oN/cWg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22
 a=EUspDBNiAAAA:8 a=mIdND3L9f6gUZBhNI2MA:9 a=QEXdDO2ut3YA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-ORIG-GUID: F3miugIkN0kaSvhJqcMeMKnlpcArRoqC
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzAzMDEwMyBTYWx0ZWRfX3wBKfxJZDkQZ
 I8eqMCdnAEfE5xVxeWCSufYxOM96lw42JJsEVh+2aP4RTPT2XnXrD+GjY/x41qEmuKUOJavCB/g
 njPC2Kh8fN+h3wDrLgs/nM0ejX/XX+fYdKAHomU/zvrX7/N7G4U3NyJJptjiM8GQq+9AJdlmHRI
 aqNO0bht9mBvNeCX1VWdz8ipcAkm0BSjjCxLHigKqIDCEOmyXhmatz63H0g8r9AlymWrzO2Xi2f
 IAatvDJ+JRVofwO4jbjtDllS0LHmhMFuESdHEi10FdTbADb7VfVzrNBvTOfren+bTqTHHcnfhat
 t2nHpsMp9yt/+uLayTuoObS2K1QyUPCgrA2V9g82A5KWvSfWfvPMUqwo4TiaouWttZZjzFebqt3
 6ZYhv4ZfL4Bm+SF4gAlJTSb5tKv86toL40G4B2CYn3ssRFGPTOpLwh8WzuJ6WRRm/JxzM+DKRfh
 TQOsF57dPJfm3tzuQ+A==
X-Proofpoint-GUID: F3miugIkN0kaSvhJqcMeMKnlpcArRoqC
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-02_05,2026-03-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 lowpriorityscore=0 impostorscore=0 malwarescore=0 spamscore=0
 suspectscore=0 adultscore=0 priorityscore=1501 phishscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603030103
X-Rspamd-Queue-Id: 9E83C1F0028
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-270480-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,oss.qualcomm.com:mid,qualcomm.com:dkim,qualcomm.com:email,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo];
	FREEMAIL_TO(0.00)[oss.qualcomm.com,kernel.org,linux.dev,gmail.com,poorly.run,somainline.org,ffwll.ch,linux.intel.com,suse.de,quicinc.com,marek.ca,linaro.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[27];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzysztof.kozlowski@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

Add DSI controller Qualcomm Eliza SoC using exactly the same block as
SM8750.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 .../devicetree/bindings/display/msm/dsi-controller-main.yaml          | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/msm/dsi-controller-main.yaml b/Documentation/devicetree/bindings/display/msm/dsi-controller-main.yaml
index eb6d38dabb08..49b8b6db45f1 100644
--- a/Documentation/devicetree/bindings/display/msm/dsi-controller-main.yaml
+++ b/Documentation/devicetree/bindings/display/msm/dsi-controller-main.yaml
@@ -51,6 +51,10 @@ properties:
               - qcom,qcs8300-dsi-ctrl
           - const: qcom,sa8775p-dsi-ctrl
           - const: qcom,mdss-dsi-ctrl
+      - items:
+          - const: qcom,eliza-dsi-ctrl
+          - const: qcom,sm8750-dsi-ctrl
+          - const: qcom,mdss-dsi-ctrl
       - enum:
           - qcom,dsi-ctrl-6g-qcm2290
           - qcom,mdss-dsi-ctrl # This should always come with an SoC-specific compatible

-- 
2.51.0


