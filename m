Return-Path: <devicetree+bounces-275130-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yAGSK/Tps2l6dAAAu9opvQ
	(envelope-from <devicetree+bounces-275130-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 11:41:56 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B9239281A0E
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 11:41:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 7DBDC304D35E
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 10:39:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0D6CA391851;
	Fri, 13 Mar 2026 10:39:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="bebmByIP";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="jlbbIkTG"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D22F239151F
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 10:38:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773398343; cv=none; b=Uy+MXWxw3p2vHXyBAUOXmUpkcSbBoCm71Y4Zub0D6aTdwub+cAmZoUyxPJ/HegUFk4iqAjsQFmhGKUN5+SBVtioJIwVSxVfKDL31zn/7foB5vTxg6PAS1adAb6sz21Q1POT4AslnRRZy2Fh52Q2dsL734JgT6h7ZFSfqe8IZnpw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773398343; c=relaxed/simple;
	bh=FoqFSSAiTfyIAuZzoV7iXeidCJ9wGZojo02/RhEIEps=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=BhwADseJz4iimkotpQundVIH/ZWqxo5HSJIEHMI9PgqCGAOQeXTVzqo2pPe5oj2aSFGDihu5JkH9FXMVvTLvTor62jKg0EITtHRAPgZ3IFFmnOEFcikAxTFJZqMTHKK1FXIFpuuuPxXOELjhKpr90qfdxvhsnJ+1w+T19iKHZBo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=bebmByIP; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=jlbbIkTG; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62DA85jk1749468
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 10:38:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=WSrl/GiyTFY
	uo8iwDHPoqBFgN8PwcEDEUqLDvv0RTlA=; b=bebmByIPKFS6zIoSaioPiDaaHrA
	pbIBwV3xvJdq2qBVUX5CGIuju2+eqFQMTRjjn0A7W9sJBE8i4RYirphshtccZi9S
	YHfAnFAcujpKzw1c4Sot6ewPemK/CnuSjdNaRfbaFxiIYWOgOWybj1Sy4CAbFsKU
	97/DJQnVd23GcEqlBXQh0J9sMDOPPoggleRMf9SgIEo1pUGkDKJ2GI8PD1qqDX/c
	p+JSKab9okXZj0x6EBHoSjRxMbcI5uZOaTAoG4bnY0h9MGQa5XcrxwKlImudo6iC
	W2Epqe3WJkLqnV+B/Kiou8Em+/N4hOGD4yf8IPLdB4xIezj3jI1ch/PZaeg==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cvgj6g398-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 10:38:58 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8cd7de0e161so1375307085a.2
        for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 03:38:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773398338; x=1774003138; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WSrl/GiyTFYuo8iwDHPoqBFgN8PwcEDEUqLDvv0RTlA=;
        b=jlbbIkTGR6EBm6JeRIhsX27ve9WxunIffqbB/LvEUb12rDQEWLMLOdKoH3+mBvgdkS
         VH9tMsjgTKKH1J6GBJtM+nEnSF0lzMCr1vjNiBVmZcNMxhfZJWdocXITkr7mDjgytuh/
         bV0nBnXnocHD9pa1WaY1ibE0+6p8zO1szklTNcY7MH/9ewKPfd8a2bkNClqDjXoWRJus
         o1lfU8S/+umF1sV2Bq34vyQPWHC3sP8SCpAc1trFOCh6lGx8IrQKwWVQHAkHGSt76RfN
         7Jr2hd8BmNeNNJ0M1HzXS5EembLmKV60XHH2+veCNkPoYqJZFhGx/SQC937zMbvK7G00
         9WZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773398338; x=1774003138;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=WSrl/GiyTFYuo8iwDHPoqBFgN8PwcEDEUqLDvv0RTlA=;
        b=WqgMesRYcjblhFjMLzB263L6d5+iwoGLhbCATXRJ3vyf5lr/VQIxHL1gfI8gTTxs2F
         KJJumHzf3aUDYEmKWmnvmzA32LHWhGtNCOD7IYb5sBVrqp4+4zGeUrK6r5CqvRfo/+pK
         ucObn41Axfl02/7QQfeyN3Pfs4lYSx+7KfhxMTEa3JoeBK6XtANTVOSJBblgt9OXkvlm
         zFcY2oU3YNNDv67RDXabt8g+ivk00uFyNmLzSrdWcmyEZwuSTbHZUmC8xiljoNqggWdw
         bGj2y5zTEVViC1vC/bbGFedp59taqiit9FCchxmDnpr1U6AtzrD+ZJGfkIAh7ORmqjyX
         9etA==
X-Forwarded-Encrypted: i=1; AJvYcCVXh698grvTcJi/sMDUaqH599/8/bw9q0pnNzMiDkY2HEfdJREAKH9xE2RCv+EhzL4J4ZXHYwaakeDk@vger.kernel.org
X-Gm-Message-State: AOJu0Yz2mBltRVFlMLLIejxkcIxBoHhtfR/+gcSiMkxxnpno88kZfkke
	jp0+3fgjwbnZDPiN1zlXcvDccQwfg88i2No39mC9NBY/0wlzhtOVcgL8yO65BmKLTXaN5eg/fPh
	L8gITE3WNCyw6alxfuMf6hxjXOLx3hQ/nIemk/GBnECYHkmdwIsfKjS7JPDzTPiJp
X-Gm-Gg: ATEYQzzKvlQ0qcTYsUJo8pCIYUBMCnXiuLAHIf3gKjxhDHpmA7QkDgzYTSrRSLsIzhF
	50dKDHKQb8b7uSWt4KBeOnR9sDvRGMo4hUFTauqu702UhgS596v8O/phiYt1zdwXdOPx6oRBljB
	+BpxwK+ALpBZn2Se9GGgMUHP2ykQ3DmF1ILmFk3nlkjB8BvF1kf6Cd6F+x6C5B4ocUHYJMpWdbl
	rv8kTo+geTr1Bp/7uG/qtR61ZDBiUDh4lfRPhAli8nUUhs3EXVa4W5LI7K5Pwefo3hJmpcmlX4J
	UZxbpStcHpkecJrRF3Cl7LYoGvJOdW9u4C1JZMTSoNs3YJTtftMheYlIDYTGNRNpvbPKAeoYjsT
	ektkaph4NwWWI9VmIMCGysJwzwYafvhp+QUBm1bnQ7uNxTOC498JCMw8=
X-Received: by 2002:a05:620a:4092:b0:8cd:7fc0:ee1d with SMTP id af79cd13be357-8cdb5b23729mr387022585a.46.1773398337923;
        Fri, 13 Mar 2026 03:38:57 -0700 (PDT)
X-Received: by 2002:a05:620a:4092:b0:8cd:7fc0:ee1d with SMTP id af79cd13be357-8cdb5b23729mr387019585a.46.1773398337375;
        Fri, 13 Mar 2026 03:38:57 -0700 (PDT)
Received: from localhost.localdomain ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48556426be9sm20183445e9.9.2026.03.13.03.38.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Mar 2026 03:38:56 -0700 (PDT)
From: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
To: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org
Cc: richardcochran@gmail.com, r.mereu@arduino.cc, m.facchin@arduino.cc,
        geert+renesas@glider.be, arnd@arndb.de,
        dmitry.baryshkov@oss.qualcomm.com, ebiggers@kernel.org,
        michal.simek@amd.com, luca.weiss@fairphone.com, sven@kernel.org,
        prabhakar.mahadev-lad.rj@bp.renesas.com,
        kuninori.morimoto.gx@renesas.com, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        netdev@vger.kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
Subject: [PATCH v2 7/7] arm64: defconfig: Enable configs for Arduino VENTUNO Q
Date: Fri, 13 Mar 2026 10:38:22 +0000
Message-ID: <20260313103824.2634519-8-srinivas.kandagatla@oss.qualcomm.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260313103824.2634519-1-srinivas.kandagatla@oss.qualcomm.com>
References: <20260313103824.2634519-1-srinivas.kandagatla@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEzMDA4MyBTYWx0ZWRfX4TR6sVKftso2
 o8V94tFvSn3/9mNrwdc04u+TGR9V75bcgFZ5rbLgXVzMLDa68krTqUxC9E9bQlNXMjkK5asVWFq
 h6Qa+GLZeZNACaJ++cSsTVbZApRIWHb+OWfOuDVIv0sVadQW772Mh+nPJ3EpZSZyJkjAEN0AUyx
 R+to/D1Oj01fR351rnl1Dh9vt6na4B0lv2ehS7WkFCRziFN4RxZEoXUiMGnyhWb4vo7tsaL9lKN
 OTz3f4R4KpfEKITq/syLcaL3YjQPZBzQB2+siaI87e3gSaCHUUnO5wQ04lizP01/Srj5xCaElKS
 WbZlEhS8AG6xSopYUqcv4RuUKvnY4yagpGNK2YF6Mw5IKjriOXQTage+43tndAyrJgaNaJKLLSK
 ZUXSCbCgX3r/hhgmuVuomisv9vpBgm6onBeFDkI4hUYUJwFLn0sfxVVUlJW4ndph5MtcF3PyFTY
 aKnnC2/mc7zrLZehYdA==
X-Proofpoint-GUID: 631418GRKjn0hCL-druXz_3LgO70CWoM
X-Proofpoint-ORIG-GUID: 631418GRKjn0hCL-druXz_3LgO70CWoM
X-Authority-Analysis: v=2.4 cv=H+vWAuYi c=1 sm=1 tr=0 ts=69b3e942 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=ZsC4DHZuhs/kKio7QBcDoQ==:17
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22 a=EUspDBNiAAAA:8
 a=rO3wVDe-YCVyVCuK1RsA:9 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-13_02,2026-03-12_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 lowpriorityscore=0 phishscore=0 clxscore=1015 malwarescore=0
 adultscore=0 impostorscore=0 priorityscore=1501 bulkscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603130083
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[gmail.com,arduino.cc,glider.be,arndb.de,oss.qualcomm.com,kernel.org,amd.com,fairphone.com,bp.renesas.com,renesas.com,vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[22];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-275130-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[srinivas.kandagatla@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,qualcomm.com:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: B9239281A0E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Enable ETHERNET PHY and Analog codec configs required for Arduino
VENTUNO Q board.

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 arch/arm64/configs/defconfig | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 4ed70ab7ee85..aefb8a81b78a 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -416,6 +416,7 @@ CONFIG_MARVELL_88Q2XXX_PHY=y
 CONFIG_MICREL_PHY=y
 CONFIG_MICROSEMI_PHY=y
 CONFIG_AT803X_PHY=y
+CONFIG_QCA808X_PHY=m
 CONFIG_REALTEK_PHY=y
 CONFIG_ROCKCHIP_PHY=y
 CONFIG_DP83867_PHY=y
@@ -1145,6 +1146,7 @@ CONFIG_SND_SOC_ES7241=m
 CONFIG_SND_SOC_ES8316=m
 CONFIG_SND_SOC_ES8328_I2C=m
 CONFIG_SND_SOC_GTM601=m
+CONFIG_SND_SOC_MAX98090=m
 CONFIG_SND_SOC_MSM8916_WCD_ANALOG=m
 CONFIG_SND_SOC_MSM8916_WCD_DIGITAL=m
 CONFIG_SND_SOC_PCM3168A_I2C=m
-- 
2.47.3


