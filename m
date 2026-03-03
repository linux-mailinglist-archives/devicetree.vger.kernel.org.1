Return-Path: <devicetree+bounces-270481-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kHK5B8DepmlkYAAAu9opvQ
	(envelope-from <devicetree+bounces-270481-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 14:14:40 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D1921F0064
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 14:14:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 084F0314314C
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 13:08:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 130B6423A67;
	Tue,  3 Mar 2026 13:08:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="M7tMzMeH";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="MlrFMMQ2"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A700423A76
	for <devicetree@vger.kernel.org>; Tue,  3 Mar 2026 13:08:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772543307; cv=none; b=Qth+JwQQmbmw/Ejj0mUp9FbBR4bz4lxolyVv0dp/iKpAFm4XepBjCcE+MQ5qSOAH53gSNsy+XAzpMi6uLCC+m04rOKbHtOcvhzSPVPCA83v+9j4vf9DHq1fq24FmoXW9qOP0K80rYvodmv6zWv2SV+Au11NLH1ckciV8+2MnlNE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772543307; c=relaxed/simple;
	bh=rBeHOx6F9m6NdTQIVIlJ5ueXyG6WKv5A3h4KFzfYNqU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=DtANNYyU4ZYCYFicUHKdIKRyvb0oH6I2NTnoTXiDM0Y1chXL5QSHlLK3UJfEFsYeR3LFiSq2ldEkACdsZq5nRddgr66Mfo2z3U36kfsCAvgl0avlVK5xOUMxCaXHNKzC/1PR+3tQdBXQEirxmoJzhtb4/OJGwO2sFTRx169a7r0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=M7tMzMeH; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=MlrFMMQ2; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6239n2G72775551
	for <devicetree@vger.kernel.org>; Tue, 3 Mar 2026 13:08:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	RAE817eOkoFlssgZD9qvItbxSD0wQHT8mpg6XXPbDoA=; b=M7tMzMeHfrXeEfGP
	mfn1VZNmc8kqDEFe9ywMRt5qxlZWM4859at6FIq3eovf8c31g0j8wZ1YweQvR1Oj
	tJY7UloyUp4bsCcfaBQ9rjArDWCMVp3MwphVlLu+zBE6c8eXpjBMsG6924Iy40iK
	ckbx+oxmkvHiTMkPgHqSoFac9UiCD37S+LxZTk/4sSmEOCxrRuxcJiSg+ZPe9FHb
	Txu1EJNpRklL+NqsTu0HAr29ylX+gGxY4lLRZTSims74pwA693RLUO0nUnEoyL3R
	FufzdKAQqnA5oaGTOXVrsUKArCdZHNP3gXIh0mXHsN/GR9LE0zQcs0QnTQmRsxiT
	EO20PA==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cnsjm1fca-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 13:08:23 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8c70cff1da5so3550082485a.2
        for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 05:08:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772543303; x=1773148103; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RAE817eOkoFlssgZD9qvItbxSD0wQHT8mpg6XXPbDoA=;
        b=MlrFMMQ2picmmaBVI2rCl16WYF8dYcZwf7Huquuft3DkWtxq2MjsOIMu5HBGGcxNQG
         xsdbpzBh8IIhkPPcXBYnvVFlxnJTupj3DL+WuqBGhUq/cUhVoUmoVHvPethRQq3r0w/b
         JbRt/5dmhabgsSN3ub4g4b2HKTDJX3fxqrAX6MRtmbN/XS3wsPkd9v/Vr7vUZR42U93I
         VqT9vBBCSMBz1FGmcjymGJhKSpXNPWIJEiy3Tv7dldQgm11+MEtgsBy2wV8BgUEsdwqy
         Z+8ExTCUoEXpHWfFGWHkeV4IfxgjzqiS52P/8NpiU13H7ZhJ2U30Nwa0Nw7zVComIKaf
         Le+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772543303; x=1773148103;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=RAE817eOkoFlssgZD9qvItbxSD0wQHT8mpg6XXPbDoA=;
        b=l1gfKh8IQ0R1ePK/x6/+XwJKdeaWIceXKzOTEG372BeROUu0S2uMHr51FofFZ8vAsw
         oqFPu8flLnrIeTTc5wHcvKIE5UZXiU1IQNLw+5EKxy0+BBDF24WwV80owOewS5iF1bRj
         jBfq1RdNVco9zG6LiZ0fHGB1qT5tXncUzh7EsfdJypJq6y9ySwsoG0WcN3KJpC2hwPD0
         b0HmXN36DoxH/o/YYkhuyJf/VgZvODFDYaI/5LBeQXqt0nBSA5QUu/ck9pAm2gOi4t/R
         WMdopHo3/CRDmvcjztRG2+u0n4dRQ7cgfYYalfc7G3fJ2KcIXeV8ep8MeqVLkWGYaF4r
         BHZw==
X-Forwarded-Encrypted: i=1; AJvYcCVA2q9GGGVgbA5uBuyVcehLDMXQ0AURfW7PesDrAkP9l7S2YUYV5EusemBnDWbOl5U+9rpvFaRDW8EB@vger.kernel.org
X-Gm-Message-State: AOJu0Yw6bXHxBTA8x2OphcEvZKhWJiL7rNUkiiHPVN6HbdXRSoIVHoLl
	Wu3j1nS3+ulJwdywxtZGemngtrl/l1Xfo0faEaW3ngigP1tv5536OYT5mCl5UARB8yYFocqhdoL
	JwaVvCTAa8ba++3R83dWrKC3coEPiYWvb4pgKzsDwbmAvCxCaFkH6I6cK1RDMb50G
X-Gm-Gg: ATEYQzxi6J/Q/t1n+kxEe4xJHHugUalG2WfxP9o8538FIwNCQZo3BWP1vAVsdMuKVxT
	cbYJHuAl6SPJnE9Kovew34bcoz7HYltCkq4DnnQm6kr2sJ6W+1hhsrL3iH9G3UfqpO3HVqUAHtP
	jbxAQ08rnHFFvmmd0UCYNj/VX7jc3WtTxh3tEam9yY60CnLCKKsZqGRIQxOZdTr8BrGeVzB5RTG
	oVlw9DDPDfBHPPkNva1CH8zEvzfROJwPhpwcmnQRAETCxw0AH+EzuGq2LmJcAfune/+Nng4+mM0
	egyArEtSxf5l73v2Ac/jDeQtucBBLpz7k3KX91+HS2aKAPz8uqzng6zigQz5tLAaaccVu5wBc6H
	XAAkh4ljvGc7Tch/khR3cqYDaVJ9cisPG/zh/9VkvKNc4
X-Received: by 2002:a05:620a:458b:b0:8cb:c897:6839 with SMTP id af79cd13be357-8cbc8d999e2mr2076170085a.26.1772543302795;
        Tue, 03 Mar 2026 05:08:22 -0800 (PST)
X-Received: by 2002:a05:620a:458b:b0:8cb:c897:6839 with SMTP id af79cd13be357-8cbc8d999e2mr2076163285a.26.1772543302307;
        Tue, 03 Mar 2026 05:08:22 -0800 (PST)
Received: from [127.0.1.1] ([178.197.219.94])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-485126563ddsm26253495e9.3.2026.03.03.05.08.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Mar 2026 05:08:20 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Date: Tue, 03 Mar 2026 14:07:54 +0100
Subject: [PATCH 4/8] dt-bindings: display/msm: qcom,sm8650-dpu: Add Eliza
 SoC
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260303-drm-display-eliza-v1-4-814121dbb2bf@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1027;
 i=krzysztof.kozlowski@oss.qualcomm.com; h=from:subject:message-id;
 bh=rBeHOx6F9m6NdTQIVIlJ5ueXyG6WKv5A3h4KFzfYNqU=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBppt0uiRASLjzocGD6W+PgQ9ZT+E09PuHdyD4JZ
 /BDtkzAcaeJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaabdLgAKCRDBN2bmhouD
 15skD/4pO1wbWknuEyHHcse+SuZHM5VK8jW1h4NIKSdxK/t55TGFfetmTgHjCig44dQyCNCUOay
 GCpZU80ZGYLajIUmft5/aLrCS0+b/pjnnxt2QszffgTuKFQpS/kfuPL8C4argLCxrvUsS3tbm45
 sFz3aEBctxIJ1owJn0SB4dLAmvLL4FvT2u5GQKab5N1Nx1Zs6n45R0kN5N0RfKo0jStKcEBUoZD
 eiK14SynEBrZM1lGaR49TWST91mDo3qhYtdoTAI+tfEN1XQNTNPfFDTS2DHuwHmJh/WmpxpOoC1
 t4njSSKSBLlOYXaYsX4KoZupNBG4u+Un+5iIlWxaBoLLhsaPjXj8bGTe7EUXo96ihP/GD0ozXH+
 po1FVzhAsU5jjVKOg8Lfjb/JyfExxGFiMrN9yXPxNTWXBqWeprSsd1MBTItmdy9UPlxmAy2s5lO
 pG8kpunOjIZMJaU+iqwbowevAx4138mwNiZJ4sFwst1jTR++hc8KCOm5cgRVMX4/FavWk5TBz62
 O2zB51tnQ+eU9KJP4Y6do3QQvajZiTUAEg27AY6gov63joBX9kolsNb93gG7IR8SxEzsukLbpxk
 1OwNUUm1ZlhJcAKUrg/NaWZd5mwxREvkYLTm3wCFuRhP7WZIIKBPMSU6mb9NPDx4/uD+BuMUYt6
 88mOMMM1j9G4Nnw==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-Proofpoint-GUID: FNAe4FGo69nCpjcNSib3NdEZl8PtO1jO
X-Authority-Analysis: v=2.4 cv=GIUF0+NK c=1 sm=1 tr=0 ts=69a6dd47 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=gOEeR9iKwsj33Yj5oN/cWg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22
 a=EUspDBNiAAAA:8 a=Qa_SlUMgUoJhev3IiQkA:9 a=QEXdDO2ut3YA:10
 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-ORIG-GUID: FNAe4FGo69nCpjcNSib3NdEZl8PtO1jO
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzAzMDEwMyBTYWx0ZWRfX/VcBxMlxKDBo
 Q0/5q/oJM7tM0VdOmADFVLkNZ76oeDJJE/fNBMbcDr7dBxY4ynxxBl5bt2eKqBtxJyUcwBfmBND
 bVDqqgGH7lPSG9v0jlSRRJBKprUK+y8Ogs9cZJTehoEtP3GfYAHeN+GyDQTbshjnPwPse9u2jh9
 UNMd5JtlQNzgYkitrsYFn2c5Jrv2ZHeTkmbQrnVC/kuCUB6bmdHRHDqTerrQNaquj1c204puKm/
 OTwMfsqGIs0wujP6m8OYPPxao0Hwq1xtHCEHYbzYwOeazc6S/NrGwudNbd1LDs8bxwdYvxlDzqH
 5bSCYG0WYnGRbk7zCzby+31E3rzeivTuB8Zua8L/7v7vPq5g3qsWyJ7e+3fsHpzGrEKueahIGbB
 E9pBwIqvBhPFlPv5+EDIFNIEoaAc+e0ZeQLmFlPHs7AJlCigvpp7tQnyDpoVHlM99ENuytttXEV
 USDFylz+59dSeanwfVQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-02_05,2026-03-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 impostorscore=0 priorityscore=1501 clxscore=1015 malwarescore=0
 suspectscore=0 spamscore=0 phishscore=0 lowpriorityscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603030103
X-Rspamd-Queue-Id: 8D1921F0064
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-270481-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,oss.qualcomm.com:mid,qualcomm.com:dkim,qualcomm.com:email,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo];
	FREEMAIL_TO(0.00)[oss.qualcomm.com,kernel.org,linux.dev,gmail.com,poorly.run,somainline.org,ffwll.ch,linux.intel.com,suse.de,quicinc.com,marek.ca,linaro.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[27];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
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

Add DPU (v12.4) for Qualcomm Eliza SoC which has noticeable differences
against SM8750 (v12.0) of mostly removing blocks:

 - Removed CTL4-5 blocks,
 - Removed VIG2-3 and DMA4-5,
 - Removed LM4-7, DSPP3, PINGPONG4-7, MERGE4-5 and several DSC blocks,
 - Added HDMI interface.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/display/msm/qcom,sm8650-dpu.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/display/msm/qcom,sm8650-dpu.yaml b/Documentation/devicetree/bindings/display/msm/qcom,sm8650-dpu.yaml
index e29c4687c3a2..dccac525d202 100644
--- a/Documentation/devicetree/bindings/display/msm/qcom,sm8650-dpu.yaml
+++ b/Documentation/devicetree/bindings/display/msm/qcom,sm8650-dpu.yaml
@@ -15,6 +15,7 @@ properties:
   compatible:
     oneOf:
       - enum:
+          - qcom,eliza-dpu
           - qcom,glymur-dpu
           - qcom,kaanapali-dpu
           - qcom,sa8775p-dpu

-- 
2.51.0


