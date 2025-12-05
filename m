Return-Path: <devicetree+bounces-244699-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 271E8CA7EF5
	for <lists+devicetree@lfdr.de>; Fri, 05 Dec 2025 15:25:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0F0F731459F4
	for <lists+devicetree@lfdr.de>; Fri,  5 Dec 2025 14:24:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AA8CE329C6D;
	Fri,  5 Dec 2025 14:23:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ajoheosN";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="M6pcwZTP"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4548A326950
	for <devicetree@vger.kernel.org>; Fri,  5 Dec 2025 14:23:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764944629; cv=none; b=q9kfyAdneK1cOwFEbNSWCG7V/nRrJp9fzTgVYBdKYzfedbWW9XJ5dSlCTU1xHmmoLHu5ePgGZwWQwSvcKNkhOAEh2AeXIjJOaCKUl8MJVrioxerIOpgq8roQCQ/WFFHE3qZqwfSMPLMgRzYiNkKye8NtDo7s/jnhUk4KH3ueETM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764944629; c=relaxed/simple;
	bh=Md9TKdx16tqGAyZcKVYrxHIko120WWyVK5V8N8yxhSk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=EioCFJJTWfr56V80K4Q1OWlWoi9xyJiJXYS64RiNv1ckCPp4VKflMVgH+8FrHX1e8Kd1xxh4rI7xcWqWUKKS7ZnBbYQl3WG/eSEfzWrGfGM4e2jJWiucUi50/u/hVWW5VH7eg8/Y8XpgsGQOVuLAZeSvC/wOypvjKD7gWsOnLYk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ajoheosN; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=M6pcwZTP; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B5AaesN3137321
	for <devicetree@vger.kernel.org>; Fri, 5 Dec 2025 14:23:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	KpL1ZCAi/bl6NzNe8EooB2p+xF2dmVy1zpbHfekK8nw=; b=ajoheosNf3z6w+nU
	6xA40b+t68I95QRK2n2ew0Ln//Fyb/lb8UqxmrqRYvgk+knVR6Qc2PcD2kcmbA77
	zcugMwXAVu/BU7C2n0Q3IcYbQBfZnxdsRE5nF0MF6yUJbEi+0tlWhTu4pPw4zxBU
	SA0zuilDuO/M53KfpGpCMRvyTChjQ2eTQKKSpjWs+9ZmqiKEkLpi5OAj2vdZKN3Z
	nyaJMnZU2dAl8HYOoe2cPwIrChIcNuUVx/vqP282cCsyQWyK/YJpV1959ndZgiZI
	yzv7vB8P3ca3R4ouqd8ONs+xvgI77zxDno60p28Auptj8IESRtPDu7wbl9fm9HVw
	PLUbuQ==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4aupa8sv6q-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 05 Dec 2025 14:23:43 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8b2e9b2608dso358017985a.3
        for <devicetree@vger.kernel.org>; Fri, 05 Dec 2025 06:23:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764944623; x=1765549423; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KpL1ZCAi/bl6NzNe8EooB2p+xF2dmVy1zpbHfekK8nw=;
        b=M6pcwZTPmd6uWquWmknf+mdrBO7IUuBJnO0mxzphf3uB9ILCkOllCEwsBZXv/8gLiX
         sDhoefG1WRhIHgFc8RmNz1+cc1T4FBcAhcHs1UfBBQtsY/7ECKesJCUeJxFfO8jIESPZ
         b48qx35pecX1NI2jtlMFmwzySg7lnm8qPRjeqLMd73WEI1x+1NWZte59naY09dSsujJ8
         4xSZR2cLYiyI+XIijTWktQd9GxSVDYyyf/GZADVAhq3CVjFMiEmF9RTOhzr02OI0A3vR
         KQv4/mLWlvuRnsu09hsPqnHhMKTbSjh5kJwiOl/sqv4BKpwHEQSD63+pwoROzc/NXezZ
         iwQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764944623; x=1765549423;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=KpL1ZCAi/bl6NzNe8EooB2p+xF2dmVy1zpbHfekK8nw=;
        b=i9jx82KZWP8xPArILWC1j6sn6WmdycwQJGTfmMGRd4K4avdoLcstC+xP9bdMHhaST3
         kj5+XU2+Fdh18NAiUvUA7CUy4mDBXmtFmL1MpRf8E/EWz4r2IzIDNnnElQvvxt9AyXKa
         NpK2sYEHw1fT7CEK7mrX9pDJ+OKjuflM8p6M0ItZ8/t7S1Kux36JNoQjGQXpEbj3kmQX
         mBLnkg8nBjiND7SgnA9pn4lRArzhPGWF3/2fA2fdH1l7yVHUXZtBjcPKopNCfjYmYQ/C
         eQXs6VZ+Gt1cpU8qq5p92ffRM/W1YCXISIi7wfsVdyJOFi0aCIBUxGFIqRQIHxGsUdjL
         bsVw==
X-Forwarded-Encrypted: i=1; AJvYcCWUMrKEX0sSA4aNYOzPMbn7mkjrYN4yJURbn4iFTv/morKsoaHcYlyXpqALkZGrDeGGqFNAG1C1+VKJ@vger.kernel.org
X-Gm-Message-State: AOJu0YxgYMQZkUBC87AhbP9b8QbRmzZC9rcxN8FthLzGb+w3KsOYvk3A
	5pgFTI6gwq+8jXvvP88LmnDHQOKckOpO8NJltofdfHifjxCGxNq4HYDt4HtNb3vjHgYEqFYPiQK
	SDb6ME2a2eUUfjrwukg8OawTttIUWwgNL86GgX1sSNM+r0P1/zfb1eeow/bjp8p76
X-Gm-Gg: ASbGnctOE0ue3M4rCkss27fFE4FtRPW1wOKQ/yrc4K1vmTrr/K8J5tuqcTpnMiBehJu
	bzyl+z0lpIR4n4kzAiZCc0Ogr1yy+eQwq+MLXWf+M9DSmU7viKaUgD+Bd/Z3B3WBcUJSCEuEfUq
	jwpDGr6y+7LDzeypecNL03R+Ci5ybBhUWF7HGq3vA3Lry61o/YzSPkZ8g79hWzEO5Fo2VfNG4Fl
	FREtkWqGJtGeXw4sg6GVHIz7Fu/lwYIg4x0rTk3sexf7/1q8FUl+gxzJ/9DObbsykd7GjPIqALK
	JY1JRv0GBo+vraKNUIDqIFL1ur8vfkdMZl3Z3qCHU5T50ZfVYjFOGXcOGy8djWHxo72l6NkeWA2
	7O75hqt3xcUecXzk=
X-Received: by 2002:a05:620a:701b:b0:8b2:eefb:c8a6 with SMTP id af79cd13be357-8b6181ebde5mr1026504285a.88.1764944623085;
        Fri, 05 Dec 2025 06:23:43 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHup2SCd/gh2IpnEn1N/wtFy3Wz9q8vNGu5VpdX7RGFCFLfkYZEo0Wx7NclFib82W5Vg4TNWQ==
X-Received: by 2002:a05:620a:701b:b0:8b2:eefb:c8a6 with SMTP id af79cd13be357-8b6181ebde5mr1026499385a.88.1764944622632;
        Fri, 05 Dec 2025 06:23:42 -0800 (PST)
Received: from hackbox.lan ([86.121.7.169])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42f7d331df0sm9414161f8f.36.2025.12.05.06.23.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Dec 2025 06:23:42 -0800 (PST)
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
Date: Fri, 05 Dec 2025 16:23:21 +0200
Subject: [PATCH v5 2/4] phy: qcom: edp: Fix the DP_PHY_AUX_CFG registers
 count
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251205-phy-qcom-edp-add-glymur-support-v5-2-201773966f1f@oss.qualcomm.com>
References: <20251205-phy-qcom-edp-add-glymur-support-v5-0-201773966f1f@oss.qualcomm.com>
In-Reply-To: <20251205-phy-qcom-edp-add-glymur-support-v5-0-201773966f1f@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>
Cc: Dmitry Baryshkov <lumag@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Abel Vesa <abel.vesa@linaro.org>,
        Abel Vesa <abel.vesa@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-47773
X-Developer-Signature: v=1; a=openpgp-sha256; l=1246;
 i=abel.vesa@oss.qualcomm.com; h=from:subject:message-id;
 bh=AaogKH9/xxrfRbTLXrUVe3RNsCYBntk2k416s/czYdU=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBpMurlJukjdqWbBNoUet10fKcTbzpwtwke4gNy2
 W2QMH2oAsGJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCaTLq5QAKCRAbX0TJAJUV
 VlukD/9ogyxLBu6/01Var4hq2k6HhjswBOML6K8oL3KXUdJoJHtqobF6L7RcAUOdJ2P7oB3xq/g
 84cWdRUb54AM68WSMwCWBlpTGZTZZDjnMT6BOph+0jyshswRu4r4aPOXNYEjW3mrZolq9V1DoNL
 HBEpGKEvF1xYihMh6x/cMj2/wLXn8YU7tsykW6Cx7eOzEYPSdvk2To0HQqO/1R5GJp6otHHr33O
 DVG1m/jVFbKsDhidlChBJFZ15wsuiQHjgxudwcWYDgsUCjbJ5FvEqkvBRGky803HoyMFjdHkrQn
 lreDLBRzMdArZ/qLDXiFOD1CQBWUj6L88CiGrWbuxP5TjCCclO7y+ulID5SEbwuPNBy2lS6WMB2
 DqEzqVsEFO1Rz03IEfdUnlpE3bnPl30P5km0MaeG5KcytsvQFJUwHSNry6kGc99IBf3jmeLtnkb
 4lRa92t8aSS3kgJOt9B1HJiHUk1sEZIRR59OFaypcaMbHDM/ghIgfTWQdFPQJ0Z/t18LP3qPLVw
 OM3tPETqt82lnnEWwgev924XpdikRBSiojVxu3/DxikbNbhCaBDUJNO7L8JrD01olGdNdeB6pj6
 ZGvObeJw10ezTk3y1NxztgVfFHvvMEyguSkDxv5qMJDRTKYX1H8P8y2v6VQSyt6zP1nu/yS30/6
 V+b7FnZhqvYv4MA==
X-Developer-Key: i=abel.vesa@oss.qualcomm.com; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-Authority-Analysis: v=2.4 cv=ZqDg6t7G c=1 sm=1 tr=0 ts=6932eaef cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=DdBtMnqNxkYIvXj6ev4VzQ==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=EnfBGAjIh6IkBJmaZGcA:9 a=QEXdDO2ut3YA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjA1MDEwMyBTYWx0ZWRfXw+4juaTqe/wd
 OtQyfLnp1hK4DMjVQlc7QUWjCCj5Rl/sfXKkiRm3upAhV7ZSf5rPB2dV/a4OobPG+25xaamRnwv
 edCbCZ6dNLg8wzgnHuMAmX7EgQsb7a/VUKNg0eWKAgkw4VPjCYb6BpOJX80GjdCesnfjZqHtFs5
 4LE/DBlNl2TXhkST6FNJY5Lm9R9wOzbjAXH4UQutnksrxZztbr8cTEoX9gltHYNIpETibJ0slO+
 nYTEowxIb5tyYQfSmiPueLZ8PE4e3RO5R5MLsAdL53fT/9K/Rxpxp/UhrWT+8uiiXmKqVb45O1t
 H2Fdd0qbHX507xCVuk16cPED5lWGDXBCyCevfqnNaBp2D4zVtn3ujoEXTx8fNyk5UF+xh1A64YD
 Hj9gmvjGhb4tEAATIYH35MVT1DL70w==
X-Proofpoint-ORIG-GUID: zqXpL5x0DtcDn3fF8113pJ8HX6Bas7LK
X-Proofpoint-GUID: zqXpL5x0DtcDn3fF8113pJ8HX6Bas7LK
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-05_05,2025-12-04_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 priorityscore=1501 clxscore=1015 phishscore=0 spamscore=0
 bulkscore=0 impostorscore=0 adultscore=0 malwarescore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512050103

From: Abel Vesa <abel.vesa@linaro.org>

On all platforms supported by this driver, there are 13 DP_PHY_AUX_CFGx
registers. This hasn't been an issue so far on currently supported
platforms, because the init sequence never spanned beyond DP_PHY_AUX_CFG9.

However, on the new upcoming Glymur platform, these are updated along
with the rest of the init sequence.

So update the size of the array holding the config to 13.

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-edp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-edp.c b/drivers/phy/qualcomm/phy-qcom-edp.c
index 06a08c9ea0f7..f98fe83de42e 100644
--- a/drivers/phy/qualcomm/phy-qcom-edp.c
+++ b/drivers/phy/qualcomm/phy-qcom-edp.c
@@ -32,7 +32,7 @@
 #define DP_PHY_PD_CTL                           0x001c
 #define DP_PHY_MODE                             0x0020
 
-#define DP_AUX_CFG_SIZE                         10
+#define DP_AUX_CFG_SIZE                         13
 #define DP_PHY_AUX_CFG(n)                       (0x24 + (0x04 * (n)))
 
 #define DP_PHY_AUX_INTERRUPT_MASK		0x0058

-- 
2.48.1


