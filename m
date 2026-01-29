Return-Path: <devicetree+bounces-260921-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sD26B1yDe2mvFAIAu9opvQ
	(envelope-from <devicetree+bounces-260921-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 16:57:16 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 402C4B1B60
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 16:57:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id A10F33002925
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 15:57:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6127432571F;
	Thu, 29 Jan 2026 15:57:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=analog.com header.i=@analog.com header.b="TOJz0WiO"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-00128a01.pphosted.com (mx0a-00128a01.pphosted.com [148.163.135.77])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDF1C27B32C;
	Thu, 29 Jan 2026 15:57:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.163.135.77
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769702230; cv=none; b=rewF8gUm1ulYUmFraBiQPy/iilB+7GkMQOgl2mPJeqU1WlfXqsGUyRyhyzpkGt3ceX7uknuWEfmVYictYETLM4tATVQqi3xbAMREQRJh9XEwY4lHXESP8LilL+huzXfetR4O7/sgkjM0e0yNYg1zWKq4eMqwhqEpiFwq1L1RGCM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769702230; c=relaxed/simple;
	bh=MVUmfhXVGo7qzu9DQtIUiTPtt60ZbUm9b1XciVEQ+Fs=;
	h=From:To:Subject:Date:Message-ID:MIME-Version:Content-Type; b=YWgKYQ8Ce2Q5VGRxHqwbZYgri+JTqZT9IbXUA5Y+AGd5P37s8Cm6Hp30ZNYfdxzzI0ZS3ZhuRqKhC2Asb7w1vv2k0B+UiJnw0kEh1Q3UFQ23VfI2I1NvwONWGVKMJ2eOzqgmtTlQ8r0qyY3OG1R4z4VaQdTZU1jWa0apTgEdBRw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=analog.com; spf=pass smtp.mailfrom=analog.com; dkim=pass (2048-bit key) header.d=analog.com header.i=@analog.com header.b=TOJz0WiO; arc=none smtp.client-ip=148.163.135.77
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=analog.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=analog.com
Received: from pps.filterd (m0375855.ppops.net [127.0.0.1])
	by mx0b-00128a01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60TC4ZPg3783266;
	Thu, 29 Jan 2026 10:57:01 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=analog.com; h=
	content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=DKIM; bh=4CARVuTpHWlo1VqOXKUrJUfArU/
	5sxP24iKtGgMtgy4=; b=TOJz0WiOyPxr5KPpElTNwbfsi3TtGI5hwP/a1ONkvTc
	9fKMgqSocgtBKGl6vd4IhPj5f2aq73ZAs2Q/tllYktQPKzPbNhGyEq60NnAZlOYD
	amP0o37Ec0MhyagMqoNpIw5L2hOaut1mow/huLtTdVunzj2M4eMq354Bajp0Olth
	Fud9peSmyK0wt3ETNDYMj86l6ByvsNYmpMysR4bRCffzV19LLmQfcsgYKr0SC5WF
	WA0yQ7sqw2KIpPRpajKBxHHBROwmpSVnQ5qULLoqmhh3watRBPisV37lGfiuiV2s
	JV0B7JI+d+ZSWmrhAScjo5j0GaL4La4f46v50qUwj7w==
Received: from nwd2mta4.analog.com ([137.71.173.58])
	by mx0b-00128a01.pphosted.com (PPS) with ESMTPS id 4c011bj83f-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 29 Jan 2026 10:57:01 -0500 (EST)
Received: from ASHBMBX9.ad.analog.com (ASHBMBX9.ad.analog.com [10.64.17.10])
	by nwd2mta4.analog.com (8.14.7/8.14.7) with ESMTP id 60TFv0sV045287
	(version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 29 Jan 2026 10:57:00 -0500
Received: from ASHBMBX8.ad.analog.com (10.64.17.5) by ASHBMBX9.ad.analog.com
 (10.64.17.10) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1748.37; Thu, 29 Jan
 2026 10:57:00 -0500
Received: from zeus.spd.analog.com (10.66.68.11) by ashbmbx8.ad.analog.com
 (10.64.17.5) with Microsoft SMTP Server id 15.2.1748.37 via Frontend
 Transport; Thu, 29 Jan 2026 10:57:00 -0500
Received: from HYB-b1tGeUj4GP1.ad.analog.com (HYB-b1tGeUj4GP1.ad.analog.com [10.48.65.247])
	by zeus.spd.analog.com (8.15.1/8.15.1) with ESMTP id 60TFujFY004048;
	Thu, 29 Jan 2026 10:56:52 -0500
From: Antoniu Miclaus <antoniu.miclaus@analog.com>
To: Peter Rosin <peda@axentia.se>, Rob Herring <robh@kernel.org>,
        Krzysztof
 Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Srinivas
 Kandagatla <srini@kernel.org>,
        Antoniu Miclaus <antoniu.miclaus@analog.com>,
        David Lechner <dlechner@baylibre.com>,
        Johan Hovold
	<johan+linaro@kernel.org>,
        Linus Walleij <linusw@kernel.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>
Subject: [PATCH v6 0/2] mux: gpio-mux: add enable GPIO support
Date: Thu, 29 Jan 2026 17:56:19 +0200
Message-ID: <20260129155633.3985-1-antoniu.miclaus@analog.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ADIRuleOP-NewSCL: Rule Triggered
X-Authority-Analysis: v=2.4 cv=PvmergM3 c=1 sm=1 tr=0 ts=697b834d cx=c_pps
 a=3WNzaoukacrqR9RwcOSAdA==:117 a=3WNzaoukacrqR9RwcOSAdA==:17
 a=vUbySO9Y5rIA:10 a=VkNPw1HP01LnGYTKEx00:22 a=s9NaZnocBEMkScvqQS4A:9
X-Proofpoint-GUID: w4nJXkxZuxghHzAn2h9FSp79Ac5TL-ng
X-Proofpoint-ORIG-GUID: w4nJXkxZuxghHzAn2h9FSp79Ac5TL-ng
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI5MDExMSBTYWx0ZWRfXzxFx7iV3HLxd
 pXZ8OuNuBRLP8eI2JeWabALb9BBgThQanv7opDvo4t6rZ5bEOFTMJQdXlBtW4QqsBZfVA6bR4EG
 hx8Xig3PdTaGU3AwfB8P31PE6p9fWvhbxrpdO4VQQWgvNjCfvAnYeCzW6k4xMeRhgP6wTg2Qxft
 0vVuaoKVnd6WPZwdyKLj/ntDqHayPfProj3kH+XpYIrf8xv1svMwPLlG4oiT9fSS+BejpYrWYWr
 hy4EufnTQF/qhZcuARfErr447pmkpsx3yZMKFXwcKa4Wxknw6bJyiiiug9t9Cxj3Oan/qZpSUTf
 qLxA7DsMaFQ7iaoAlgK1SpsiA5zVzIP3OzDcAEh9E4Md8YiebFIf6gAxFggBILRjovzE9SPxaKu
 7zgMhlErIDHdgw7TAsDpXpg6JVzQwgmakTZfqX16PsHXQCrNck82tabQsN1SYnozGMPMZquhcNK
 TvWXP/Dj2UQbbyxcthQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-29_02,2026-01-28_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 bulkscore=0 priorityscore=1501 clxscore=1015 suspectscore=0
 malwarescore=0 impostorscore=0 phishscore=0 adultscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601290111
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[analog.com,quarantine];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[analog.com:s=DKIM];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_NEQ_ENVFROM(0.00)[antoniu.miclaus@analog.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-260921-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[analog.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_SEVEN(0.00)[9];
	TAGGED_RCPT(0.00)[devicetree,dt,linaro];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[analog.com:mid,analog.com:dkim,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 402C4B1B60
X-Rspamd-Action: no action

This series adds optional enable GPIO support to the gpio-mux driver.
The enable GPIO allows the multiplexer to be disabled before changing
address lines and re-enabled after, preventing glitches that could
briefly activate unintended channels during transitions.

This feature is useful for devices like the Analog Devices ADG2404
(4:1 mux) that require enable control for glitch-free operation. The
binding documentation now includes ADG2404 as a supported device with
a dedicated example.

Antoniu Miclaus (2):
  dt-bindings: mux: gpio-mux: add enable-gpios support
  mux: gpio-mux: add support for enable GPIO

 .../devicetree/bindings/mux/gpio-mux.yaml     | 16 ++++++++
 drivers/mux/gpio.c                            | 37 +++++++++++++++++--
 2 files changed, 50 insertions(+), 3 deletions(-)

-- 
2.43.0


