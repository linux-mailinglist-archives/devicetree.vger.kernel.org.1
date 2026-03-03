Return-Path: <devicetree+bounces-270482-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YOUVDtvepmlkYAAAu9opvQ
	(envelope-from <devicetree+bounces-270482-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 14:15:07 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 869EA1F006B
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 14:15:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 344A6314E620
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 13:08:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 64175342C93;
	Tue,  3 Mar 2026 13:08:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="pataYZPZ";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="FkGICZdx"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D50B421A11
	for <devicetree@vger.kernel.org>; Tue,  3 Mar 2026 13:08:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772543310; cv=none; b=HGOZLGSdKGnA+gttV/jZn24hMQKNYllqJI+wY8unGRJRaAAYDH9lNia6C4wpgvzz8abi78HcoDBPpwRe1P1oXB6P4lRnd+muHSfTycR8Uz8httR4YrG20KXAyPykYMkBnKTQRfxXBsw9jYl3EBij7nJBdXoFgvWgEW+Ks7BWwHo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772543310; c=relaxed/simple;
	bh=LDFFiqzDW+f+iMho9NrXdtSG0YUfqf560O46iFi4qXs=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=PYDsTr+tfNPHtCQOZPjVFeH5/qxk9kq4K5+EdsUF6nO9dqjWtyKewSMMLS/OZJLFRbj7WOF07RKUiWLyPK181M+NYkjTf1K4Pa47yZNQe3z2ux+XA/F+4OBZexA7vl8c+uNMoGKO6J17YoA1otXGZVZzih24UT5gocnQ3ey76FI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=pataYZPZ; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=FkGICZdx; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6239mdk12307383
	for <devicetree@vger.kernel.org>; Tue, 3 Mar 2026 13:08:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	yPL5UqgH72JkiU1VIBZBLeurksx0V2HDyuq8Tc7+pIQ=; b=pataYZPZFSFMNScF
	gzV9Umj5cF5ZamXn5DlPvIyQqvCbDwnHE+iAIiliMi4aPqAd7d8kjV4PmcNiRwfM
	V3MKUPT2xTcVb3rb5SrEnc1cVugr+RVjohMlKnXgL8OpDDm5ghWCvG3PWMQZ6+YF
	UnsqF2VZYhDU5XrspwH6NsfIBdiQgnbraVGFJwnuO/puVIu5qdJQ+C5pZiC/DiSQ
	31uhPVuo0d9MeK8crc1nHlE28NAYoJcoWzUVnwzvIQJD17gAHSysuYIZrmVHW92M
	pYpZ81NBTV3ZGRrr+fQ9g5TbSltYzzfK3XIIdwRhWu82gvkHHwkuax81EZLshxZ6
	iJ+AgA==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cnvtu8p9c-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 13:08:27 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8cb3b0d938dso4362867585a.2
        for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 05:08:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772543307; x=1773148107; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yPL5UqgH72JkiU1VIBZBLeurksx0V2HDyuq8Tc7+pIQ=;
        b=FkGICZdx0RODSFfyKcqepdXojNFlxS/2N5Tc3jyVZmEfgOAOKwDYZtvE7UIwXSBK9X
         /j85ODlA7/d8ButVSIZrzmz9liXgISE9T8wFt6kkz9nR466K9zMqJkWGEug+06USq+Fx
         8fJamKtWfN7qmIIVwE1dJKIg3ncj/zUG7Ho0MGeQUGuWAo5AKt/LbdivKDI4qgdQ3/14
         1T8N08Q0rWt2WnnxxfepX/suiauYX67FIvP5eEsoQZ2vOA23PwZdoRJ7ycjr37h7ENr1
         4tiZ4hZpwzekQ38YKZAB3ue5wVIYkuletmvuhysSdQI0dWfwJjceKSYlQwTML8vrAYKn
         dHWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772543307; x=1773148107;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=yPL5UqgH72JkiU1VIBZBLeurksx0V2HDyuq8Tc7+pIQ=;
        b=J2Hd3QJjujm6Ux2uOZb/2dYInky4s5n+9eQQpy79uIgMa9sneu9KVDRA3auGP9JK/E
         Cz9gEsJL1QBvHPeuZuJf+sDTXEiJNgsqnX8MWQB7ItB7TjKpoWHaA67HiCUAg2eGvwwC
         6MGSrsvhyHOMCc3N6Q5w5QRFHym+tdV2GTxVXilPdyABGMNdu/tLwljC6G3lorXPd0RN
         rItLChk7zrUX/73A5OrUXWbfHysJqrXrjrqCquPh2nSuv6J+olNR3juEZtNhx4WCPUhg
         DTsByw/uRLDBIdpeBfd3zz588j0q8iZtC8OoV7D/xEmjbu2Va8CyTwq2sjp6MUfB2DKj
         02eA==
X-Forwarded-Encrypted: i=1; AJvYcCVr+5v6rIOF4SAGlUOMSdk42zJGODHwcqRpVB4xKruPgkPwfq1ugJFxFhot4VZhtn1MLNWQ82Z0xEVy@vger.kernel.org
X-Gm-Message-State: AOJu0Yx6TI/iVqBKOxi+XGVw4Mg6iA7HwoS9lTOLHDfURhM/jo3eN2Nh
	acOnTMQI0O6J304NN7tbys5jb42Tnp6J/XpW8meQoi92d7Fcal8MufJ07EUcJcMDleL1RGhCblG
	io4K1oZwKVoiPVxirBcH962P4fBMV8RbBaUU3VmxRNei543bgvuunHbE5vxHf5Ghe
X-Gm-Gg: ATEYQzyXuX2WvujXU/+axlix10OVTfBhFwaDtYBGnUhoS2XcXIGQTxS70+3Kka/WM5s
	gLtN16h/mTHrZL6Gd+ULZGyRwOgKmHKtgne7XXw4avS1t7oeX+1hpe1/FYF1jWpD1bIYB/K23N4
	TZ7T9DsgjGU/sIs8pAN0h1k7NUK+lzWd+Hsy2YPnA9et0qzVy+8TiaJOm8ZLRtOEFNKhJn4xNfT
	xm0evFzuAY/t9t5zXGcNcDRd9wxIQwX4cXwu/x0d6cqMY6QfRWDW1rIWD019X9T2Qo2RvLOAQGL
	kIfqx/DyOBWqPV82TlPcwNKw/DRXsnVt2HKRb0O/V3D25PGoAe+96AoS+69ECEtrMuh2jdzXMyl
	hp3xVLOOO0c++EpBz4MeDY4+m/j9kqw9F9rdeey1bgoQm
X-Received: by 2002:a05:620a:bd3:b0:8c6:e20b:e6c6 with SMTP id af79cd13be357-8cbc8ef6dd8mr1958306385a.52.1772543306474;
        Tue, 03 Mar 2026 05:08:26 -0800 (PST)
X-Received: by 2002:a05:620a:bd3:b0:8c6:e20b:e6c6 with SMTP id af79cd13be357-8cbc8ef6dd8mr1958299785a.52.1772543305828;
        Tue, 03 Mar 2026 05:08:25 -0800 (PST)
Received: from [127.0.1.1] ([178.197.219.94])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-485126563ddsm26253495e9.3.2026.03.03.05.08.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Mar 2026 05:08:25 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Date: Tue, 03 Mar 2026 14:07:55 +0100
Subject: [PATCH 5/8] dt-bindings: display/msm: qcom,eliza-mdss: Add Eliza
 SoC
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260303-drm-display-eliza-v1-5-814121dbb2bf@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=16848;
 i=krzysztof.kozlowski@oss.qualcomm.com; h=from:subject:message-id;
 bh=LDFFiqzDW+f+iMho9NrXdtSG0YUfqf560O46iFi4qXs=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBppt0vYBDxBelmtU4J1HVOQNEEVD4ddDw1H9usm
 lwo/I7u6B6JAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaabdLwAKCRDBN2bmhouD
 15e/D/4tvzx59CAJsPAdEX8Zei+LVRjFhPTQl69l7EIDWsS21kunuUkEF44q3jebHGN/e4PT38I
 XjZ2Ykl8AHZR0bQ//LmpY6/HMGG+HhibrXKdJ7xzTGxho9fyFBj807ibzPkGxQiszO/iJAg0n8K
 CYqI4qk+ZuUlykfwboGH/DLmkLNTPhL8IqvssVZNX6EFJe8AqsZWQvYyGyHliu4I9m2ITrlbWtF
 r0ftOScvVBJ9PuyHMYDMu8YO06aQxVehCakvCR9JwUFdh3/DTcqjIoBgpAPYgdJ77oV6dJhveGU
 6wmAh0EX4X2pMS15URl56t7vgK0QFpLvKQ6sCxv65hpqrPIxeEJGLE8IfkBZcsQbp4pgqaOAbuV
 bOQfG9NnTNLwpJHkJMFIg5fJrLBZlOSRyuF4Xl/YQm6WYwEIvm9pb3yFIU5muuZD5IPCCqzE3Nt
 JqBWEw7me/V13+xlUbehInmtjhiaWmb99aBSaO+e+yWqldb4DXxSzyrHWf1zmutkIg17XvUgpU+
 Z8x/027iq3ueZhlXu/9dVVIhPnPvY+w9P7bJ70s/MUr6zvpici0cTtTAxqpAb6ldzAgyqzy3hdr
 t9rv0pXWmIbzbNtLepDeCOBgmp4TmPnwbrKgLV+q9IXcpKb6BR3rOUFIS3JtjhKXU9cXpll049I
 MYaOjAu6m6q7tIQ==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-Proofpoint-GUID: 80kyJp_Wm3DBDVcnqympVH2JhFIRyKyt
X-Proofpoint-ORIG-GUID: 80kyJp_Wm3DBDVcnqympVH2JhFIRyKyt
X-Authority-Analysis: v=2.4 cv=A75h/qWG c=1 sm=1 tr=0 ts=69a6dd4b cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=gOEeR9iKwsj33Yj5oN/cWg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22
 a=gEfo2CItAAAA:8 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8 a=wHLdSD0nsKlegPJtv6gA:9
 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22 a=sptkURWiP4Gy88Gu7hUp:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzAzMDEwMyBTYWx0ZWRfX8Br8h9JdcZot
 aMSzTRtIlDToscX1D9bOp//puVRYlLWIq5TXf5CIcEb8i8B5qzuSWEoFXzFKzgiI4Kv+Clz7HkT
 tf8xJmPJVNPCGnabFIJXJ/coTuGdabrGN3VHzW8LJMh3zm1qR04WF1QmWbrNcSGFZI/5UO3Hdhv
 w8yAvbYryVx0YKhC9YIhtKeE+PNyLaKDXxXfm/imbQi5iIpm5Kg/XBI/4TgL2YaU8eZL7b7YKV3
 rbBgNP35I16jEu7AaPThpEqXYO5TrmzpFeUkuccDUe8RkzrSt5VkNW+6/t8fyNM7b9jHRgiVqgU
 mBzKu+788MpO4AiLMnPTbv9H5JW1/+PQvqp8g2SOOTavtNt54kOrQOLTg0xblAVagaKs9z1G47X
 RNFVHcithvpRrkjv9wIzZ4f80rbiIh1QZk448Ld0hrOds+w+qmULRT4FPJdzjCAtFIoA2MjrQA/
 513uG44ClzKdCGaAPxA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-02_05,2026-03-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 spamscore=0 lowpriorityscore=0 suspectscore=0 phishscore=0
 adultscore=0 clxscore=1015 bulkscore=0 malwarescore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603030103
X-Rspamd-Queue-Id: 869EA1F006B
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
	TAGGED_FROM(0.00)[bounces-270482-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo];
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

Add MDSS/MDP display subsystem for Qualcomm Eliza SoC, being overall a
minor revision change against SM8750, but coming with few different
components, like different DSI PHY and added HDMI.

The binding does not include HDMI description yet.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 .../bindings/display/msm/qcom,eliza-mdss.yaml      | 496 +++++++++++++++++++++
 1 file changed, 496 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/msm/qcom,eliza-mdss.yaml b/Documentation/devicetree/bindings/display/msm/qcom,eliza-mdss.yaml
new file mode 100644
index 000000000000..9064b8d3993a
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/msm/qcom,eliza-mdss.yaml
@@ -0,0 +1,496 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/msm/qcom,eliza-mdss.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm Eliza SoC Display MDSS
+
+maintainers:
+  - Krzysztof Kozlowski <krzk@kernel.org>
+
+description:
+  Eliza SoC Mobile Display Subsystem (MDSS) encapsulates sub-blocks like DPU
+  display controller, DSI and DP interfaces etc.
+
+$ref: /schemas/display/msm/mdss-common.yaml#
+
+properties:
+  compatible:
+    const: qcom,eliza-mdss
+
+  clocks:
+    items:
+      - description: Display AHB
+      - description: Display hf AXI
+      - description: Display core
+
+  iommus:
+    maxItems: 1
+
+  interconnects:
+    items:
+      - description: Interconnect path from mdp0 port to the data bus
+      - description: Interconnect path from CPU to the reg bus
+
+  interconnect-names:
+    items:
+      - const: mdp0-mem
+      - const: cpu-cfg
+
+patternProperties:
+  "^display-controller@[0-9a-f]+$":
+    type: object
+    additionalProperties: true
+    properties:
+      compatible:
+        contains:
+          const: qcom,eliza-dpu
+
+  "^displayport-controller@[0-9a-f]+$":
+    type: object
+    additionalProperties: true
+    properties:
+      compatible:
+        contains:
+          const: qcom,eliza-dp
+
+  "^dsi@[0-9a-f]+$":
+    type: object
+    additionalProperties: true
+    properties:
+      compatible:
+        contains:
+          const: qcom,eliza-dsi-ctrl
+
+  "^phy@[0-9a-f]+$":
+    type: object
+    additionalProperties: true
+    properties:
+      compatible:
+        contains:
+          const: qcom,eliza-dsi-phy-4nm
+
+required:
+  - compatible
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/qcom,dsi-phy-28nm.h>
+    #include <dt-bindings/clock/qcom,eliza-gcc.h>
+    #include <dt-bindings/clock/qcom,rpmh.h>
+    #include <dt-bindings/interconnect/qcom,eliza-rpmh.h>
+    #include <dt-bindings/interconnect/qcom,icc.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/phy/phy-qcom-qmp.h>
+    #include <dt-bindings/power/qcom,rpmhpd.h>
+
+    display-subsystem@ae00000 {
+        compatible = "qcom,eliza-mdss";
+        reg = <0x0ae00000 0x1000>;
+        reg-names = "mdss";
+        ranges;
+
+        interrupts = <GIC_SPI 83 IRQ_TYPE_LEVEL_HIGH>;
+
+        clocks = <&disp_cc_mdss_ahb_clk>,
+                 <&gcc GCC_DISP_HF_AXI_CLK>,
+                 <&disp_cc_mdss_mdp_clk>;
+
+        resets = <&disp_cc_mdss_core_bcr>;
+
+        interconnects = <&mmss_noc MASTER_MDP QCOM_ICC_TAG_ALWAYS
+                         &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
+                        <&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
+                         &config_noc SLAVE_DISPLAY_CFG QCOM_ICC_TAG_ACTIVE_ONLY>;
+        interconnect-names = "mdp0-mem",
+                             "cpu-cfg";
+
+        power-domains = <&mdss_gdsc>;
+
+        iommus = <&apps_smmu 0x800 0x2>;
+
+        interrupt-controller;
+        #interrupt-cells = <1>;
+
+        #address-cells = <1>;
+        #size-cells = <1>;
+
+        mdss_mdp: display-controller@ae01000 {
+            compatible = "qcom,eliza-dpu";
+            reg = <0x0ae01000 0x93000>,
+                  <0x0aeb0000 0x2008>;
+            reg-names = "mdp",
+                        "vbif";
+
+            interrupts-extended = <&mdss 0>;
+
+            clocks = <&gcc GCC_DISP_HF_AXI_CLK>,
+                     <&disp_cc_mdss_ahb_clk>,
+                     <&disp_cc_mdss_mdp_lut_clk>,
+                     <&disp_cc_mdss_mdp_clk>,
+                     <&disp_cc_mdss_vsync_clk>;
+            clock-names = "nrt_bus",
+                          "iface",
+                          "lut",
+                          "core",
+                          "vsync";
+
+            assigned-clocks = <&disp_cc_mdss_vsync_clk>;
+            assigned-clock-rates = <19200000>;
+
+            operating-points-v2 = <&mdp_opp_table>;
+
+            power-domains = <&rpmhpd RPMHPD_MMCX>;
+
+            ports {
+                #address-cells = <1>;
+                #size-cells = <0>;
+
+                port@0 {
+                    reg = <0>;
+
+                    dpu_intf1_out: endpoint {
+                        remote-endpoint = <&mdss_dsi0_in>;
+                    };
+                };
+
+                port@1 {
+                    reg = <1>;
+
+                    dpu_intf2_out: endpoint {
+                        remote-endpoint = <&mdss_dsi1_in>;
+                    };
+                };
+
+                port@2 {
+                    reg = <2>;
+
+                    dpu_intf0_out: endpoint {
+                        remote-endpoint = <&mdss_dp0_in>;
+                    };
+                };
+            };
+
+            mdp_opp_table: opp-table {
+                compatible = "operating-points-v2";
+
+                opp-150000000 {
+                    opp-hz = /bits/ 64 <150000000>;
+                    required-opps = <&rpmhpd_opp_low_svs_d1>;
+                };
+
+                opp-207000000 {
+                    opp-hz = /bits/ 64 <207000000>;
+                    required-opps = <&rpmhpd_opp_low_svs>;
+                };
+
+                opp-342000000 {
+                    opp-hz = /bits/ 64 <342000000>;
+                    required-opps = <&rpmhpd_opp_svs>;
+                };
+
+                opp-417000000 {
+                    opp-hz = /bits/ 64 <417000000>;
+                    required-opps = <&rpmhpd_opp_svs_l1>;
+                };
+
+                opp-532000000 {
+                    opp-hz = /bits/ 64 <532000000>;
+                    required-opps = <&rpmhpd_opp_nom>;
+                };
+
+                opp-600000000 {
+                    opp-hz = /bits/ 64 <600000000>;
+                    required-opps = <&rpmhpd_opp_nom_l1>;
+                };
+
+                opp-660000000 {
+                    opp-hz = /bits/ 64 <660000000>;
+                    required-opps = <&rpmhpd_opp_turbo>;
+                };
+            };
+        };
+
+        dsi@ae94000 {
+            compatible = "qcom,eliza-dsi-ctrl", "qcom,sm8750-dsi-ctrl", "qcom,mdss-dsi-ctrl";
+            reg = <0x0ae94000 0x400>;
+            reg-names = "dsi_ctrl";
+
+            interrupts-extended = <&mdss 4>;
+
+            clocks = <&disp_cc_mdss_byte0_clk>,
+                     <&disp_cc_mdss_byte0_intf_clk>,
+                     <&disp_cc_mdss_pclk0_clk>,
+                     <&disp_cc_mdss_esc0_clk>,
+                     <&disp_cc_mdss_ahb_clk>,
+                     <&gcc GCC_DISP_HF_AXI_CLK>,
+                     <&mdss_dsi0_phy DSI_PIXEL_PLL_CLK>,
+                     <&mdss_dsi0_phy DSI_BYTE_PLL_CLK>,
+                     <&disp_cc_esync0_clk>,
+                     <&disp_cc_osc_clk>,
+                     <&disp_cc_mdss_byte0_clk_src>,
+                     <&disp_cc_mdss_pclk0_clk_src>;
+            clock-names = "byte",
+                          "byte_intf",
+                          "pixel",
+                          "core",
+                          "iface",
+                          "bus",
+                          "dsi_pll_pixel",
+                          "dsi_pll_byte",
+                          "esync",
+                          "osc",
+                          "byte_src",
+                          "pixel_src";
+
+            operating-points-v2 = <&mdss_dsi_opp_table>;
+
+            power-domains = <&rpmhpd RPMHPD_MMCX>;
+
+            phys = <&mdss_dsi0_phy>;
+            phy-names = "dsi";
+
+            #address-cells = <1>;
+            #size-cells = <0>;
+
+            ports {
+                #address-cells = <1>;
+                #size-cells = <0>;
+
+                port@0 {
+                    reg = <0>;
+
+                    mdss_dsi0_in: endpoint {
+                        remote-endpoint = <&dpu_intf1_out>;
+                    };
+                };
+
+                port@1 {
+                    reg = <1>;
+
+                    mdss_dsi0_out: endpoint {
+                        remote-endpoint = <&panel0_in>;
+                        data-lanes = <0 1 2 3>;
+                    };
+                };
+            };
+
+            mdss_dsi_opp_table: opp-table {
+                compatible = "operating-points-v2";
+
+                opp-140630000 {
+                    opp-hz = /bits/ 64 <140630000>;
+                    required-opps = <&rpmhpd_opp_low_svs_d1>;
+                };
+
+                opp-187500000 {
+                    opp-hz = /bits/ 64 <187500000>;
+                    required-opps = <&rpmhpd_opp_low_svs>;
+                };
+
+                opp-300000000 {
+                    opp-hz = /bits/ 64 <300000000>;
+                    required-opps = <&rpmhpd_opp_svs>;
+                };
+
+                opp-358000000 {
+                    opp-hz = /bits/ 64 <358000000>;
+                    required-opps = <&rpmhpd_opp_svs_l1>;
+                };
+            };
+        };
+
+        mdss_dsi0_phy: phy@ae95000 {
+            compatible = "qcom,eliza-dsi-phy-4nm", "qcom,sm8650-dsi-phy-4nm";
+            reg = <0x0ae95000 0x200>,
+                  <0x0ae95200 0x280>,
+                  <0x0ae95500 0x400>;
+            reg-names = "dsi_phy",
+                        "dsi_phy_lane",
+                        "dsi_pll";
+
+            clocks = <&disp_cc_mdss_ahb_clk>,
+                     <&bi_tcxo_div2>;
+            clock-names = "iface",
+                          "ref";
+
+            #clock-cells = <1>;
+            #phy-cells = <0>;
+
+            vdds-supply = <&vreg_l2b>;
+        };
+
+        dsi@ae96000 {
+            compatible = "qcom,eliza-dsi-ctrl", "qcom,sm8750-dsi-ctrl", "qcom,mdss-dsi-ctrl";
+            reg = <0x0ae96000 0x400>;
+            reg-names = "dsi_ctrl";
+
+            interrupts-extended = <&mdss 5>;
+
+            clocks = <&disp_cc_mdss_byte1_clk>,
+                     <&disp_cc_mdss_byte1_intf_clk>,
+                     <&disp_cc_mdss_pclk1_clk>,
+                     <&disp_cc_mdss_esc1_clk>,
+                     <&disp_cc_mdss_ahb_clk>,
+                     <&gcc GCC_DISP_HF_AXI_CLK>,
+                     <&mdss_dsi1_phy DSI_PIXEL_PLL_CLK>,
+                     <&mdss_dsi1_phy DSI_BYTE_PLL_CLK>,
+                     <&disp_cc_esync1_clk>,
+                     <&disp_cc_osc_clk>,
+                     <&disp_cc_mdss_byte1_clk_src>,
+                     <&disp_cc_mdss_pclk1_clk_src>;
+            clock-names = "byte",
+                          "byte_intf",
+                          "pixel",
+                          "core",
+                          "iface",
+                          "bus",
+                          "dsi_pll_pixel",
+                          "dsi_pll_byte",
+                          "esync",
+                          "osc",
+                          "byte_src",
+                          "pixel_src";
+
+            operating-points-v2 = <&mdss_dsi_opp_table>;
+
+            power-domains = <&rpmhpd RPMHPD_MMCX>;
+
+            phys = <&mdss_dsi1_phy>;
+            phy-names = "dsi";
+
+            vdda-supply = <&vreg_l4b>;
+
+            ports {
+                #address-cells = <1>;
+                #size-cells = <0>;
+
+                port@0 {
+                    reg = <0>;
+
+                    mdss_dsi1_in: endpoint {
+                        remote-endpoint = <&dpu_intf2_out>;
+                    };
+                };
+
+                port@1 {
+                    reg = <1>;
+
+                    mdss_dsi1_out: endpoint {
+                        remote-endpoint = <&panel1_in>;
+                        data-lanes = <0 1 2 3>;
+                    };
+                };
+            };
+        };
+
+        mdss_dsi1_phy: phy@ae97000 {
+            compatible = "qcom,eliza-dsi-phy-4nm", "qcom,sm8650-dsi-phy-4nm";
+            reg = <0x0ae97000 0x200>,
+                  <0x0ae97200 0x280>,
+                  <0x0ae97500 0x400>;
+            reg-names = "dsi_phy",
+                        "dsi_phy_lane",
+                        "dsi_pll";
+
+            clocks = <&disp_cc_mdss_ahb_clk>,
+                     <&rpmhcc RPMH_CXO_CLK>;
+            clock-names = "iface",
+                          "ref";
+
+            #clock-cells = <1>;
+            #phy-cells = <0>;
+
+            vdds-supply = <&vreg_l2b>;
+        };
+
+        displayport-controller@af54000 {
+            compatible = "qcom,eliza-dp", "qcom,sm8650-dp";
+            reg = <0xaf54000 0x104>,
+                  <0xaf54200 0xc0>,
+                  <0xaf55000 0x770>,
+                  <0xaf56000 0x9c>,
+                  <0xaf57000 0x9c>;
+
+            interrupts-extended = <&mdss 12>;
+
+            clocks = <&disp_cc_mdss_ahb_clk>,
+                     <&disp_cc_mdss_dptx0_aux_clk>,
+                     <&disp_cc_mdss_dptx0_link_clk>,
+                     <&disp_cc_mdss_dptx0_link_intf_clk>,
+                     <&disp_cc_mdss_dptx0_pixel0_clk>,
+                     <&disp_cc_mdss_dptx0_pixel1_clk>;
+            clock-names = "core_iface",
+                          "core_aux",
+                          "ctrl_link",
+                          "ctrl_link_iface",
+                          "stream_pixel",
+                          "stream_1_pixel";
+
+            assigned-clocks = <&disp_cc_mdss_dptx0_link_clk_src>,
+                              <&disp_cc_mdss_dptx0_pixel0_clk_src>,
+                              <&disp_cc_mdss_dptx0_pixel1_clk_src>;
+            assigned-clock-parents = <&usb_dp_qmpphy QMP_USB43DP_DP_LINK_CLK>,
+                                     <&usb_dp_qmpphy QMP_USB43DP_DP_VCO_DIV_CLK>,
+                                     <&usb_dp_qmpphy QMP_USB43DP_DP_VCO_DIV_CLK>;
+
+            operating-points-v2 = <&dp_opp_table>;
+
+            power-domains = <&rpmhpd RPMHPD_MMCX>;
+
+            phys = <&usb_dp_qmpphy QMP_USB43DP_DP_PHY>;
+            phy-names = "dp";
+
+            #sound-dai-cells = <0>;
+
+            dp_opp_table: opp-table {
+                compatible = "operating-points-v2";
+
+                opp-192000000 {
+                    opp-hz = /bits/ 64 <192000000>;
+                    required-opps = <&rpmhpd_opp_low_svs_d1>;
+                };
+
+                opp-270000000 {
+                    opp-hz = /bits/ 64 <270000000>;
+                    required-opps = <&rpmhpd_opp_low_svs>;
+                };
+
+                opp-540000000 {
+                    opp-hz = /bits/ 64 <540000000>;
+                    required-opps = <&rpmhpd_opp_svs_l1>;
+                };
+
+                opp-810000000 {
+                    opp-hz = /bits/ 64 <810000000>;
+                    required-opps = <&rpmhpd_opp_nom>;
+                };
+            };
+
+            ports {
+                #address-cells = <1>;
+                #size-cells = <0>;
+
+                port@0 {
+                    reg = <0>;
+
+                    mdss_dp0_in: endpoint {
+                        remote-endpoint = <&dpu_intf0_out>;
+                    };
+                };
+
+                port@1 {
+                    reg = <1>;
+
+                    mdss_dp0_out: endpoint {
+                        data-lanes = <0 1 2 3>;
+                        remote-endpoint = <&usb_dp_qmpphy_dp_in>;
+                        link-frequencies = /bits/ 64 <1620000000 2700000000 5400000000 8100000000>;
+                    };
+                };
+            };
+        };
+    };

-- 
2.51.0


