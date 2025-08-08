Return-Path: <devicetree+bounces-202567-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C078B1E1B4
	for <lists+devicetree@lfdr.de>; Fri,  8 Aug 2025 07:31:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 12E9118C25B6
	for <lists+devicetree@lfdr.de>; Fri,  8 Aug 2025 05:31:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BDAEB21CC63;
	Fri,  8 Aug 2025 05:30:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="LI97VAG+"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E0A021C186
	for <devicetree@vger.kernel.org>; Fri,  8 Aug 2025 05:30:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754631031; cv=none; b=jFT731Hacr6KmMXhFzlluf0JKP6YuC0KbuiGWd6r6r14YT+Xw2xK9F44gxB82VmhRPJX91QEhFr7f4WhfY6mZKSiIdBCqtpXXSCzfxUYLbfxKdOPJOmsrIp33/0NpWKX5UhzTEsOPcl0Jqt5zCWUm2oHijL7pzhq3wo+ZHu+c+o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754631031; c=relaxed/simple;
	bh=G6ac+SWY/rURugemv7DYJT3mKGq/Y+PeHZuD6sHOijM=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=jZyclcN23piO8xi59IGbJcgcarXQGqNC6btK5Hrxp7PJwlNSYCS+ErPcqUZ5LrnCp5vD/9kBPgsM9FfZ9Z3NP0oKrDhOlfkJz0aqo8Z+h0BZIo3EJwYLDwh5D4Ny+7AJpN1gLPwtrqK8ZB9nUkgaXVS2I972PW4pME6ZqPe53Mk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=LI97VAG+; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 577LJL7r000646
	for <devicetree@vger.kernel.org>; Fri, 8 Aug 2025 05:30:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=0A4nigMR2hF
	ud2hxwH/0Vp9R/PK6z3adOcLeHWmQMUU=; b=LI97VAG+K3WCULoTpT9VAjvxKKL
	xACyV/n5GJdgH7LwqmDCAuJtOpok1K6MMA0O70/4VqbKwF/QuBjBqD1ur3z6P0ON
	WiyaYUWSl3Z8ehb/2Sxwy8ffzkeYAQyIt8YTdffOe5Dk2bWWGqDqYPJ+Vtwqvgif
	+cUcPibbW1bd8Hg4XCtsz1sQHjegSZfz+ZLTW0ymP5n5KAplDKDHhuG5jOpbmP8n
	HZNayiBzNcWWAV5V8p4j05VOlprJBg3W4xtcX8nlRo2GGRUceplXjVvX3Gn7sgmU
	SviuWA2ACyRtiqg/wm+PKyVW9r6/arL1nyBN5MIHxMQAyc8tSzgEDX2JwnQ==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48bpybgtvk-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 08 Aug 2025 05:30:29 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-76be6f0bbfdso1477969b3a.2
        for <devicetree@vger.kernel.org>; Thu, 07 Aug 2025 22:30:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754631028; x=1755235828;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0A4nigMR2hFud2hxwH/0Vp9R/PK6z3adOcLeHWmQMUU=;
        b=lPLr+GMwePxw645WQxuBQiyq4riJLhhSEXp/m/U5AYK1sfSXHpFPi9AdZ/ful5HeeY
         R9/gjdaxURYGk9zX4IHeqUMlbRn/W9R3IhnB0HfPW4W7KRlNFuyGIFWUKJQQefl0SCk+
         lMuNA/5NPgO4HKIW+l98zV41vWRhnrUoQii0QCZKqVbfuiNF5r+fzK30nWrIjMCoY8sy
         dPq0YmGzcLba5bnoNbpL8P3qsLlCAIj21LkyimM8xD4jtsa6rB1sDMuTjCma/7SaFpWy
         EAc49o8YTdioghGSGhhl3SBlU0mkQGF5bcN+/DNRCIXhskKAP0gS/mIGc50a1iKUynwH
         JFEg==
X-Forwarded-Encrypted: i=1; AJvYcCVW3GmWxz871201ODDigKQ9ZcwjWgrNwckogbzXtgqpHSpCl5YiCysD57fytsJCNocyEcC+5z823ppD@vger.kernel.org
X-Gm-Message-State: AOJu0Yz/1zrEh1Q05YfFvTgtkm9C62tZdqM0LZHgscWKA5orspPUZzTT
	hzrNxplrdMauv+HJV6u1HTYY7dhOb7pFBjaj+pF3qvFj7VOyKslrdEcWVCbKe0VZ6DdAZUEk8cm
	gEVr1/gOLsQK8WGFKYFepc3FtREW3oLQJOGD0h8Hdd4gp2xxks6dSszqhohsQHjum
X-Gm-Gg: ASbGnctIktIHjtrBzcKacyKIBcxTZTyb15XLPvzNgZlVttL1bjIBbYyPOeEZBoUXzWI
	HxXzR9uAR0o9CLeZzsud+VQ1c13OdeRnGZ1lZBSt34+aI5jlBaVJHvMTjcg0rg89V3HnmT6xJrg
	rDQ2ohwtRqz1Spn9pG+/+rSJtBBmoDPI1TVC72EMaz45ogCs4tPuvXYKVVpSvRb8Jm3amE7u05F
	yG5PR8RpVyyx7f9xNG5qg8d8IBKqu0vQHcckw4itMDcSzAKQTK4bZNAbiVY/gcb8JfgAXTW09oe
	aC2llkomc3j0WxGYTJ+hjtM8BzUW3nKz59Hq88EDGK61Auyehipr4Pn4OUyrH4vCP/RAjY1LmFO
	8
X-Received: by 2002:a05:6a00:2d1b:b0:748:2ac2:f8c3 with SMTP id d2e1a72fcca58-76c461afafbmr2708145b3a.24.1754631027642;
        Thu, 07 Aug 2025 22:30:27 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFrHFiuePg86xrK1PFssXX8l7W08X7w5SCuN0QKuo0C5ijMt0crnPIurgj02P1TLUN3vqCV4A==
X-Received: by 2002:a05:6a00:2d1b:b0:748:2ac2:f8c3 with SMTP id d2e1a72fcca58-76c461afafbmr2708081b3a.24.1754631027091;
        Thu, 07 Aug 2025 22:30:27 -0700 (PDT)
Received: from hu-mohs-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-76bcce8f483sm19278662b3a.31.2025.08.07.22.30.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Aug 2025 22:30:26 -0700 (PDT)
From: Mohammad Rafi Shaik <mohammad.rafi.shaik@oss.qualcomm.com>
To: Srinivas Kandagatla <srini@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Jaroslav Kysela <perex@perex.cz>,
        Takashi Iwai <tiwai@suse.com>
Cc: linux-sound@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        kernel@oss.qualcomm.com
Subject: [PATCH v1 2/2] ASoC: qcom: sc8280xp: Add sound card support for lemans-evk and monaco-evk
Date: Fri,  8 Aug 2025 10:59:39 +0530
Message-Id: <20250808052939.1130505-3-mohammad.rafi.shaik@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250808052939.1130505-1-mohammad.rafi.shaik@oss.qualcomm.com>
References: <20250808052939.1130505-1-mohammad.rafi.shaik@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODA2MDAwOSBTYWx0ZWRfXyEA8+64qUEnF
 huG0xB/AArTg12xa3LfNGx3Fi+/cKAN9sDSotWyveZab5eVr9F6lrJy6TRi7LHHqiUetugHJjIp
 c8KqEVUxlVLViDqBd27GrmbZnDpRNEnufkA9sClXOH2T2c0DeFa+FyaemRNjKAGg89R+TVybNvJ
 1TZajEM6Lj2J2nySrD89q1RP13jJ8LCno+KDNsUAU0t0uoZXHMC+rsnAcmd2y3Ap80N5m5fEUlS
 3h64rEvRLlVyRRQdu5l4WBIfamJV2AMpXDupYKuLBoNkU7PUqpr6/rfIYeLVvPdmmno9gScZfQz
 3Tmi8HKUl/QKeOcTIOi532muDJAHmh3D8gpohYjpnwP5sdzqsn3JKtdaHOcpaIyGphx9f51KBY+
 nbuYMmVL
X-Proofpoint-GUID: vGnydDdl2mElWT_AwgehUMNtAYS_Ag8Y
X-Authority-Analysis: v=2.4 cv=EavIQOmC c=1 sm=1 tr=0 ts=68958b75 cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=i_bJiae3Nsw47DEeRZ4A:9 a=zgiPjhLxNE0A:10
 a=OpyuDcXvxspvyRM73sMx:22
X-Proofpoint-ORIG-GUID: vGnydDdl2mElWT_AwgehUMNtAYS_Ag8Y
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-08_01,2025-08-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 clxscore=1015 priorityscore=1501 adultscore=0 bulkscore=0
 phishscore=0 spamscore=0 suspectscore=0 malwarescore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508060009

Add compatibles for sound card on Qualcomm LEMANS-EVK and
MONACO-EVK boards.

Signed-off-by: Mohammad Rafi Shaik <mohammad.rafi.shaik@oss.qualcomm.com>
---
 sound/soc/qcom/sc8280xp.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/sound/soc/qcom/sc8280xp.c b/sound/soc/qcom/sc8280xp.c
index 73f9f82c4e25..386e671d17f7 100644
--- a/sound/soc/qcom/sc8280xp.c
+++ b/sound/soc/qcom/sc8280xp.c
@@ -184,6 +184,8 @@ static int sc8280xp_platform_probe(struct platform_device *pdev)
 }
 
 static const struct of_device_id snd_sc8280xp_dt_match[] = {
+	{.compatible = "qcom,lemans-evk-sndcard", "lemans"},
+	{.compatible = "qcom,monaco-evk-sndcard", "monaco"},
 	{.compatible = "qcom,qcm6490-idp-sndcard", "qcm6490"},
 	{.compatible = "qcom,qcs6490-rb3gen2-sndcard", "qcs6490"},
 	{.compatible = "qcom,qcs8275-sndcard", "qcs8275"},
-- 
2.34.1


