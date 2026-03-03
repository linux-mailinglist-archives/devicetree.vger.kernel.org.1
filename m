Return-Path: <devicetree+bounces-270485-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4LO9Aw7fpmlkYAAAu9opvQ
	(envelope-from <devicetree+bounces-270485-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 14:15:58 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 630591F0097
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 14:15:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 662BA31584FB
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 13:08:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 29BF1425CC9;
	Tue,  3 Mar 2026 13:08:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="lpdVb0GL";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="cpUDycrf"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0469426699
	for <devicetree@vger.kernel.org>; Tue,  3 Mar 2026 13:08:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772543320; cv=none; b=oJTHhlyi4BxTPUOcYbzH4mth/EwUkTLMk41IykXhTd/wZ8hSh6oTPSC91SFeUP14VG7glRcIxyC3XhsA0AOQC7ENP44qpe3t7rXPwCWGpbkRzqS7mGSwcf7pnY0yktTzFeQtgM5MqHMmigntP5z5qDHoCO5eX9riDrXH/w3mjR4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772543320; c=relaxed/simple;
	bh=KTWS2/nQAIDRZvl7DcGCjzqb9vEvLIrn0vkqqdeMxEs=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=h14fEhWmRhFTRIRKyK73Cai/maqRHQXVmx983CIWmK6s+xhGjB17DGxbUyJ8XibijMvUYUHUlKr8DYbfxEA7R+aoDG18Yvrsu2ai9x2D28ARq/S7BPztZPqfnfqj2osLPN2kOg5UC7to5XEd7YbuQt4oR2NwfP4xd9jVyxJo0rE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=lpdVb0GL; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=cpUDycrf; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6239nGUj3349566
	for <devicetree@vger.kernel.org>; Tue, 3 Mar 2026 13:08:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	FAxiKpKoU8oQrkFg3AZzsNbotCc4DA46qILCX15kAZ8=; b=lpdVb0GLWZly1IzY
	63EeO8IhXtQccBfzVeXZo2T8IksXE7oJQTmDyjaurXzcn3DQmLP5OoP8DgbB3XxB
	KYjQHf9SzSuI93qu0dJYyn2YNcVUqw0uqvMcPHsMsfEzwOvQGnEKnH1GT4sLrkOf
	TrS64bizr82rVcFtk0NM1Zmq64aB4VuFgScJCEjsNeZNlAL9mgLU649uSWM3l9kh
	VHrmE30A/vPqUrpT9z0iwi5KPRXsc2rZppKws6YAQqbtgPICegt8XTwOw/9E66Bt
	8FdsDi7S+jQ9emGHVP73n+E0Wc7CDDp1HcehKFLVw7ljno0CDDO/0KFjTE1wnF/J
	4iAUzw==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cnhxsaum2-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 13:08:38 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8cb706313beso672483685a.3
        for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 05:08:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772543317; x=1773148117; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FAxiKpKoU8oQrkFg3AZzsNbotCc4DA46qILCX15kAZ8=;
        b=cpUDycrfdjse5rJkP+krI1OGZppG93slBYI2K8aDp4d9UxO5ZgNon1hmP1B3TdANwf
         r1hmb5hprAaxSMotrBgm/ravrFEoZFniL0i/s6KUcEqCYIBEoG6RBcKnZ7tReI7MBDZe
         HBgPzaKkbxnLmID3soXaWU6QDExcn7GG6G/9IXfGDQO1vx9hqHB9NBSHhiDGArDKFeEc
         OchLuT0Lu1r5yNGzUVbVLOuiI0aK27xKtHsKmFWC320s0sP8/n8OL8aJlbP5tsj11k5g
         r0UY+7R4OvYYVt7r/PgGhfSHN3nWwUNNyYJ3oI4QOUSUrvcEw0ynssBFjcNHWBriSTp7
         oEyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772543317; x=1773148117;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=FAxiKpKoU8oQrkFg3AZzsNbotCc4DA46qILCX15kAZ8=;
        b=Y2HQ+2bfOZKGkFlS6jKvkX90dfv6cgZ/ipg2BD/jDkKjCArr6jDIkzg3s8y4yxVpr3
         UDGY5Nzn2nwHAgMkT6fQNDM3fg9/WLkacNz4SPTn9O40e/OafSvTeiVzC0W+iEQrWkP2
         2ysrmgOO1F7MqASBX81K+8jCJqH19Uu2ZDRNGSL1dl3WLmNgBRBOaxfeR82FfHqMUnz8
         il3ojg199VZOL8SPGs48A42z8SZOWZKc+WSCAl/wH7RPx90YUEa0GbTWmtQj5D1xTWbq
         kk5IjqxgxPLxMrkb+qwvSZRQ2KZkUSEEjtNpVkw3S/4jH/cpkP/xHrBX17UDk7E6cXhF
         M0SA==
X-Forwarded-Encrypted: i=1; AJvYcCXcn3q0q4cSA73ZzAW058HSIqQg5ww0Wy6rOMof9UWBK6U/bgJoGjtaiaQp6/QIXmVCV6qVxZtQzhDl@vger.kernel.org
X-Gm-Message-State: AOJu0YwS95J3Ld3ZFePBkBd3SIjMDX0JUMTPhMEZKJwImdEtfNbCUWrM
	BnEk/gTymhNuF4TCsFtSanrGmER7w0EqRL8xhtV0MaWlJIOE/7cn8Rhorb01MB9mUw3AwJKkHHs
	fa/hnROEjg33K4nvtieU2o6asQ/oNalNuUTDMnMxa+2XzneH4QUs6x2hwCpiTnCNaQm403Myg
X-Gm-Gg: ATEYQzyo0sE6oMgP4q/OeZuvvBN00rSlbA+FbeaCz53pdtfuyvCO5H2SIyD+0IG3ijL
	8Cq5NAYV8rVd+f0ZULDdErvudLyraHenNU1ZoW3BkJ31I6OXLCA4g/azO/DOqnBXRY77s5Niyir
	wWQH8SSpKGUo4jeAbYhQKQ9dnlof4yXvkRgVyZXWENVpHHLCEC7/mm7QTeu8B0DDWtVcnTv2sQT
	wgoLxCTkng8KE1dkzRAoTGJ1Ay45zNL4w6CurjqsS0fM4wqnFvOQWP5g7yNEEV/1wbBe4SByGLv
	SNNG7HZpGmJENlQ/k1ZNFBWCeuUIDwwRVG9GsydAkXL+UsQUttXX8vyTckNFENJ0CsNVto/2F5c
	opYMakr70q4q6K45esdugLpmuxOqFO8s5sfOFIHhpBLK0
X-Received: by 2002:a05:620a:4503:b0:8c7:a84:d0e4 with SMTP id af79cd13be357-8cbc8e8d4d3mr1962863585a.24.1772543316942;
        Tue, 03 Mar 2026 05:08:36 -0800 (PST)
X-Received: by 2002:a05:620a:4503:b0:8c7:a84:d0e4 with SMTP id af79cd13be357-8cbc8e8d4d3mr1962858685a.24.1772543316430;
        Tue, 03 Mar 2026 05:08:36 -0800 (PST)
Received: from [127.0.1.1] ([178.197.219.94])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-485126563ddsm26253495e9.3.2026.03.03.05.08.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Mar 2026 05:08:35 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Date: Tue, 03 Mar 2026 14:07:58 +0100
Subject: [PATCH 8/8] drm/msm/mdss: Add support for Eliza SoC
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260303-drm-display-eliza-v1-8-814121dbb2bf@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=843;
 i=krzysztof.kozlowski@oss.qualcomm.com; h=from:subject:message-id;
 bh=KTWS2/nQAIDRZvl7DcGCjzqb9vEvLIrn0vkqqdeMxEs=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBppt0yEBXhsZJYHmIm0EGwPLW85L4bV9td8R0Qw
 WmYX7n12EmJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaabdMgAKCRDBN2bmhouD
 18/sD/4vBA+Bespo+c0WRMvGbITPSlRpAMyo+GULQADhyiuqs1LjQpLBYAanFPKKaMNOUgDX61l
 ZqkC+lHgrP3xYJh+6FD2qW2WNs8CzUdguJAyJciPX5ClkP6cVCXWdbnxa1FWqwzVp+LM6ZwzPrG
 qows8KvwxcjJk5F7VsKBcD06vm2rdwiqqiOo7HV0T53KuB7F5NxDOgRbp1LeMjw+Qed4taLxiLv
 EaWves3j3a0W4vS78S2iavnAaqvifF8DzJCntUpZltzHATmE2Y9Vu0EmymmJx2R+/lBYgQOf251
 H8SkTAzFTBKtevoDciv5xf/sWNC88R/m5+G5MR7ybgx9xL1puvLn871GymVWnj7SvBJKQ8RSGzx
 XzTXz1LvhG00ojEargOfNZpPbHqYTswJYmXeB+liDzb6itc51bhTDCAKrofcwb9yWs4JMxS/Oc5
 6zt7wUsU7CNjPz+kpKbdEeH4Mt9kofSC8J7EOkxXrQJDGZ/bjLYlAHlEpEBfzyG9Amv5+5l5rqM
 qMMLBJCE+Oy91ngU0pFfBW7SPUdHsWrdPXWusXMXdUNvn4CW7CR459dI4rxa7y+AtuMEDSC8kUX
 AvrTawzjzvGmaawi49mRNpUfDedUKfGFFvY48WWuQJnozd0pHZalMhriLjBbjebXpB8JMLW5Vpl
 m0TX5cPFlk1AaXA==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-Proofpoint-ORIG-GUID: rZ02AEAXCYRT4z2xsdiBARJGh0lERO90
X-Authority-Analysis: v=2.4 cv=dfmNHHXe c=1 sm=1 tr=0 ts=69a6dd56 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=gOEeR9iKwsj33Yj5oN/cWg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22
 a=EUspDBNiAAAA:8 a=fVstoq-JHv2YdypUvPQA:9 a=QEXdDO2ut3YA:10
 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-GUID: rZ02AEAXCYRT4z2xsdiBARJGh0lERO90
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzAzMDEwMyBTYWx0ZWRfXzGo4+O+4NYdk
 SYiuavE5PDyuiHvvpFRIACEd65y0BgJsan1PXrdnbsUcjt9btx9gUAO8c01g9bl1NdrHvQM5Lsk
 LGog8Xmtek5TOFuB3zC3xduwXINL4jOXYSK+DU03+lcuuBdfi8h48z9cs5qhMaK7IKmWwaKnZyV
 3eelVv+QlssAwIgNvrDBgVEHj3/uI4ofUqA6AkiQhVJY07fxQzqoM5HeCtmiRSB6T4/18ofoisK
 /BfAb2xJ/Bcuhua64TYU+YAaU+iknUjD0cAGsnJmSXEOrhQ8IiRzkustbCr4iNMMCaAIQ4uy7Nr
 iqinpvybJE9oXdGBJNi16LGVDh8lIT+ZehIpMhCLmfruDrjtdjKuOu+MoRrWsO1hixnuRo0cz/w
 HR67+Rnv3u0i+3ropvrQeosgV/Y8kWSITwxEEyN3j3YaRvXbv6gz8szjd+HFHqkYl+xdLw8YvFR
 kT0soNtm2x5cLkv9paw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-02_05,2026-03-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 bulkscore=0 impostorscore=0 phishscore=0 clxscore=1015
 spamscore=0 adultscore=0 suspectscore=0 lowpriorityscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603030103
X-Rspamd-Queue-Id: 630591F0097
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
	TAGGED_FROM(0.00)[bounces-270485-lists,devicetree=lfdr.de];
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

Add support for the Qualcomm Eliza SoC platform.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 drivers/gpu/drm/msm/msm_mdss.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/msm/msm_mdss.c b/drivers/gpu/drm/msm/msm_mdss.c
index 9047e8d9ee89..a86776425f26 100644
--- a/drivers/gpu/drm/msm/msm_mdss.c
+++ b/drivers/gpu/drm/msm/msm_mdss.c
@@ -560,6 +560,7 @@ static const struct msm_mdss_data data_153k6 = {
 
 static const struct of_device_id mdss_dt_match[] = {
 	{ .compatible = "qcom,mdss", .data = &data_153k6 },
+	{ .compatible = "qcom,eliza-mdss", .data = &data_57k },
 	{ .compatible = "qcom,glymur-mdss", .data = &data_57k },
 	{ .compatible = "qcom,kaanapali-mdss", .data = &data_57k },
 	{ .compatible = "qcom,msm8998-mdss", .data = &data_76k8 },

-- 
2.51.0


