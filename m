Return-Path: <devicetree+bounces-267427-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AA07HA9ZnGmzEgQAu9opvQ
	(envelope-from <devicetree+bounces-267427-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 14:41:35 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 880B91771D8
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 14:41:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DDBB23084C91
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 13:40:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1792622A4EE;
	Mon, 23 Feb 2026 13:40:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="od0CGeSM";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="kBFQb0rZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C38F22222CC
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 13:40:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771854009; cv=none; b=W8YscTmY65SFi5X0J/sH87gOzecgVACue+qOoDTj9ZgqGe0G/Xwt/HbTX1q/xh4LzHbJrPXN9K2ZNzcWkCEpq5ZBOL95MCBh40e5qwx4LacyKfUCzjkEWQXnMkSvfgoLZPCnvXTCPinPep+0xRSQiUj2U/3f2GCEzwXtTsd2OoA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771854009; c=relaxed/simple;
	bh=NLvjBrIJyLSxyZ26rZnJs4lMlffVyOoDRgTSetXhNdQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=FydlYaCxqIfNRp96RiRYauVRPjTlG1zuIXtL9jQdhQiCZzmmSarCpFbaLiHnVQomIrAf+/v9vunLjhOjMisoxtpnAr5w6SLyIAMiBg7x2OZKcBEre59L6lFB33g8hiKXNkqVuMzJvC1IcVwr2W6nmfCsJlkBrU5WbI7zFLCVIXQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=od0CGeSM; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=kBFQb0rZ; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61N9KTn91710276
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 13:40:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=WfO/ZWZoUCF
	0KHQ87UTWouWD01KbGW/9hGjTgn+1ycw=; b=od0CGeSMJUkoGLuPy1VymzMlpqJ
	INxgUZKG1gYtio5hOn2qhDQbYj4o6AeaW0rpuaGdOOzTSwlAvLxGrM9rBcLIFc71
	EIugRselJ4RscgJir3xtc8qiDyNvOHVIs62uLjz3gd4T0NOUfdCPTpsLhkaRhXvq
	nd9fqpNUp87wOv3Vo0FvRQN+gI/xtmWssGA5VazvOQL4crluukwnbq1jId1AOHBf
	xRC60ItOwgy82fliYrb0Hp7hVP8sooj/XmD+0bTXYo1eAEKrkNfexglfwnlxFFKP
	W2M3opPcE3jNFp/pL4eM9YRZBRkTTBRY0DSwTe5HPeAUZLicNwsz/cIdf+A==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cf5wavwds-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 13:40:07 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8cb52a9c0eeso1721553285a.2
        for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 05:40:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771854006; x=1772458806; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WfO/ZWZoUCF0KHQ87UTWouWD01KbGW/9hGjTgn+1ycw=;
        b=kBFQb0rZpOkgWTqoolMM+htu/qsdLoqjNSk5DP+BzVv1boy44YKdmmBW+13GlE6Evg
         bMvmOTyLe9BtmPUFjTX0te/fSQ+Gn2JtrwK+TxYsmkXDfMTvytHC9L+P5/9EROZGae1/
         U5NeBRzX0en8IqhJ0w5qgVERPBi2hOjUWRzPlAVenWXVZOAHH/JcztjHGz8vE3bBTxxC
         ZQ1E3HarVpktcmaKqJKEFfh+XpJFv31RkAyNuWXC3uWkkLS26IJNDs1BeVHdHD5zAIWr
         IKkd9piTNhcB0TXh2JjGJSwX4PTwkt5UNmqQX0JbDguXEqKIkU8PXc8Hym6OVj6STivN
         yDZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771854006; x=1772458806;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=WfO/ZWZoUCF0KHQ87UTWouWD01KbGW/9hGjTgn+1ycw=;
        b=LAAEk4rq2ocftHOffiWUC9X88T4YKhphYCARHM+e6wa6ixoPDUSzveAzZhu4/XwwVl
         H8zeTXuxBJPL2CgUHshfDigAHfiGX0KoJm7Apj/bYUMKyUsQFI2xM3MVUYcbsNp0mzig
         F0CsxWlNkrNT+edFC6Xt3ODDkS5FbkDOUB/akhdCf6CT3NaDtqFoi8CayoaAAKYKPZBI
         qT+flkdZ6OzVu6A7s1h6Y0r/7iHgsZ9O3nubLuFJ6ozdUgQU4ru/EUb07peaOKMuzjZ+
         bxH/+ZdNpGEnWpnKYqNl+Y/W1nVc8c4C5kzVawxFsgZ9UA9WlARJuvgghSSMyJOow6uj
         jf2w==
X-Forwarded-Encrypted: i=1; AJvYcCUODMbW7cbaq2nhSIPyJXv9X4RD7/TVUR7Yc97+San5ehEwpnmHzZIh9dJvT303nkh/1Xx9cNo0KFvu@vger.kernel.org
X-Gm-Message-State: AOJu0YzvRJUpb7XyiCFB30SHZ1fEmZXWDf3gW7gyVfL9/dlJpL/AMDnW
	lT+Stz3RTumNBzRvhieToIn1eKC9zQhNi8Edh0YuHlIqSnkOBqqHZtalPUw33Zous2iRC03jqck
	dAGzrhS6fkfK8rdq00tcdr2HJ+i3EpBO2EYz1Mw5Av9dZP2sVFxhbwoD1Jj1H/wSt
X-Gm-Gg: AZuq6aIWXn7+lTZ8pjOH7blVrvU4tqY3RgEDpLwDrHVAgMd3uAjZVsolyPDRqlCVfZ9
	0ZwdaMhs1IEokkbEgnZJ8jeMEcXQaUI8X67SEc+TnfgHrTEjLp8yWqJIAvjaLojSryvtUwRKhrV
	CNK2KGeWD6EJrm8hV5KvHj3pPx6OW2CyiL74+hoOLOLxcX5lyX/m2dBxccByMyCAD740FrsyNfu
	whh7Wa5eArZxATszHoE6T7/U+TUIqfVc/PI22uTqhPDO2hiJKU5yMpRwJG3zGBZAxUvPCpj6dvx
	X1k8zlTdVtJsliqseLw3wbBQVM1i2N5AeIW3Xagvz0z03EF+8Drlm6NZdwwyfolG3ZoLaTujhlU
	lDWuuBQHkqTcA1Hm8GS7Uyrj+c9mQgdU9bvWpiwZfQOJ5EHF1qmx9thg=
X-Received: by 2002:a05:620a:f15:b0:8c5:2d4c:4f0e with SMTP id af79cd13be357-8cb8c9fd576mr1035122585a.25.1771854006061;
        Mon, 23 Feb 2026 05:40:06 -0800 (PST)
X-Received: by 2002:a05:620a:f15:b0:8c5:2d4c:4f0e with SMTP id af79cd13be357-8cb8c9fd576mr1035119285a.25.1771854005575;
        Mon, 23 Feb 2026 05:40:05 -0800 (PST)
Received: from localhost.localdomain ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43970d4c626sm21323985f8f.28.2026.02.23.05.40.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Feb 2026 05:40:05 -0800 (PST)
From: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
To: lee@kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        andersson@kernel.org, konradybcio@kernel.org, sboyd@kernel.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, alexey.klimov@linaro.org,
        r.mereu@arduino.cc, srini@kenrel.org,
        Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: [PATCH v2 1/5] clk: qcom: fix SM6115 lpasscc register offset
Date: Mon, 23 Feb 2026 13:39:46 +0000
Message-ID: <20260223133950.221234-2-srinivas.kandagatla@oss.qualcomm.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260223133950.221234-1-srinivas.kandagatla@oss.qualcomm.com>
References: <20260223133950.221234-1-srinivas.kandagatla@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=KJVXzVFo c=1 sm=1 tr=0 ts=699c58b7 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=ZsC4DHZuhs/kKio7QBcDoQ==:17
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22 a=EUspDBNiAAAA:8
 a=g3NoBr1hRuMCkkBryE4A:9 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjIzMDExNyBTYWx0ZWRfX9a0zE6/ebH08
 S5HuAfW17c1cI1xdn7nOUEQ3DVNeWQTCOamY+60CBWkyMosL2cerB/j3tDUj2DgrXqY11538JPM
 +sNi+dn72S18X6f0pFzDM65w1IK1wSCGqhJd+ANH2Kj7k0tOUDFBOYCYHzNbMUkwgQwDDoiT593
 yyh4nY9+xzXLiLoafcFokwRZR4DmUzO4gPhNqLTTqFRH/OKwfTUck4vARF3j1iXv5d8ZmOu6cjz
 VFm72P9x06gSfP0RrqMT5wGW48fiXEPTmtd5Jmci5grHfsEcOdu3VdDq/2aItaxpwGadlWKCrRt
 zrpyhn8naieUNDp7aKfuh8p0LufodB6MA9no7OvMRTsXfmrMp2sFrqiYojG06XAl6nHsiWQkw3z
 pi5Ihr4iEHazBjomMeAKdSLjQ84h9hDaL05nDKr+chRP4jTQiLB1dkgSjbK2OCLTlXh32WoEHLV
 GeDSRxBBDL9JgkY5+bg==
X-Proofpoint-ORIG-GUID: 9sNgUVJLhDKkc_6LykFaLKY7qL-xt1Bb
X-Proofpoint-GUID: 9sNgUVJLhDKkc_6LykFaLKY7qL-xt1Bb
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-23_02,2026-02-23_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 phishscore=0 bulkscore=0 lowpriorityscore=0
 priorityscore=1501 clxscore=1015 spamscore=0 malwarescore=0 adultscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2602230117
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-267427-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[srinivas.kandagatla@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 880B91771D8
X-Rspamd-Action: no action

For some reason we ended with incorrect register offset for soundwire tx
controller reset and the regmap register max was also incorrect it was
0x1000 instead of 0x12000 which is full register range for this IP.

This was somehow compenseated in DT reg property which got it working so
far.

Fix this by correcting the actual offset and max registers as per SoC
documentation.

Fixes: b076b995e225 ("clk: qcom: Add SM6115 LPASSCC")
Cc: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
---
 drivers/clk/qcom/lpasscc-sm6115.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/clk/qcom/lpasscc-sm6115.c b/drivers/clk/qcom/lpasscc-sm6115.c
index ac6d219233b4..47adf4de2cca 100644
--- a/drivers/clk/qcom/lpasscc-sm6115.c
+++ b/drivers/clk/qcom/lpasscc-sm6115.c
@@ -35,7 +35,7 @@ static const struct qcom_cc_desc lpass_audiocc_sm6115_reset_desc = {
 };
 
 static const struct qcom_reset_map lpasscc_sm6115_resets[] = {
-	[LPASS_SWR_TX_CONFIG_CGCR] = { .reg = 0x100, .bit = 1, .udelay = 500 },
+	[LPASS_SWR_TX_CONFIG_CGCR] = { .reg = 0xc100, .bit = 1, .udelay = 500 },
 };
 
 static struct regmap_config lpasscc_sm6115_regmap_config = {
@@ -43,7 +43,7 @@ static struct regmap_config lpasscc_sm6115_regmap_config = {
 	.reg_stride = 4,
 	.val_bits = 32,
 	.name = "lpass-tcsr",
-	.max_register = 0x1000,
+	.max_register = 0x12000,
 };
 
 static const struct qcom_cc_desc lpasscc_sm6115_reset_desc = {
-- 
2.47.3


