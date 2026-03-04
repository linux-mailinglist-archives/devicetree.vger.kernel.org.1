Return-Path: <devicetree+bounces-271243-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AJydIMyOqGmzvgAAu9opvQ
	(envelope-from <devicetree+bounces-271243-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 20:58:04 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DC9352074D9
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 20:58:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C67DA3035244
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2026 19:58:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1A1813DFC82;
	Wed,  4 Mar 2026 19:58:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="W9qkHqNj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f169.google.com (mail-qk1-f169.google.com [209.85.222.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22E703DFC7F
	for <devicetree@vger.kernel.org>; Wed,  4 Mar 2026 19:57:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772654280; cv=none; b=Z0l5CWNHyysA4bTK8hghm4UQqPFnVzO0ttH49LvJauVWQQZXngGaDtUXGax0aWpLHjEDaXM0DVsjH0W1k3xIOyae2jtbQQqEu9nqY342rnMUtaFpXGY49pMwrdlGXSfl1U74/iRIVUQUhFc/SObK3/6JdPjEAYjYhniOTmuwQ+U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772654280; c=relaxed/simple;
	bh=zwt+8cIg7fX5j5y0FoEWq599AjOfiWLzzstgXb/2Yt8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=as5Aq9OgMZCYp7l3K0wE4kw6ZHPGT2DmTMqbc+AIY0OCnJDvj4ZcPXhboe48Rh4MpT4CwGDHf/rwxsUu8a8Qcf7fbvNurO5tI5zOyo3T2KC1JILSivdgUt5ucKSt8gs2+knk/GO5aKS5Q2H2Vu7RK84o1/OyQO4xEV/2hy2wgoY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=W9qkHqNj; arc=none smtp.client-ip=209.85.222.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qk1-f169.google.com with SMTP id af79cd13be357-8c7199e7f79so971470685a.0
        for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 11:57:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772654277; x=1773259077; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1b9FLFJOtAoLLddwDw5EYyl3BLOK61boxgEGp9nBc1w=;
        b=W9qkHqNj0cNzMyrm+/g3a0nMPz8hdt+RWJ9bJQhBn6DwdY4fUM/LPUqQP2Jud8bDgQ
         YsguplmH5sOQaQHnYqjwIWkZWEI+tYneAm5U7OlIZz2D5is+yrEHeqJgg3KSsLURvZN6
         nQexByPsXG2j1JwTCJED6nNLeIJCdgFJ0JoLad8qdoaTyxqwEkNpl/FzonR92hWBTaWq
         BobVNrM0ncP4Hl1dgloAR9/Is69FP3seG1JmGrFLLGyDQ/p46sWNKO4s2psbmktk3/at
         JXxA14cqgNh8bKW1RqNjCaiafdWO8rIkrUKImN1bVqsUGVf4KfEQgmcadLIYKCLwLROC
         jR7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772654277; x=1773259077;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=1b9FLFJOtAoLLddwDw5EYyl3BLOK61boxgEGp9nBc1w=;
        b=pe/m+n9csACGtezQ6+n/IyCixzUquukNzI4mUKra+K51CrJM9waKTnlfCIyhYjT8UP
         4awL+a9dnBSyFhWj/C4zDYt8H5XZrT/8YOqxbYlEoZz5Feue3U8lQ2dw8+b4ej7I7SDa
         4HoA8uoRpXPihvwe7r8IvfnWYTgkt3Oan2nL8cRY5yImuJzXLhmgdxsKD5iscgOjyCp6
         38z6QF3sW4Fd1+3H92DLsO91X3+MFRWkA8Bxjb5/NKccoWDPl9KiVYA3++ecbKWi+rM4
         KIZ2ebjp5keJD305l8dSxQCVom1CllzwR7+HcqvJHFKMuiE9ucOT8QKLZEjxT8yWx2U9
         jCcw==
X-Forwarded-Encrypted: i=1; AJvYcCVSLxuJHv/NjLoKC3R2IXRplaWQN+WBDi6vT+rt/Mm/nGH++xVqu07/LdnbjnCVfRxAlzn1n/VNN1QC@vger.kernel.org
X-Gm-Message-State: AOJu0YyTYJyq8+8TWgd7jy1JpKIO86cElBiUC98pddIJ2e58MDww5uoB
	+negnNcF0/z7rpr7xbxzqRK+YSqa8MqUPrA/EmdsnAhrorOtR1J6XvU8
X-Gm-Gg: ATEYQzwgBrHycGaIMpG4ssGJcdBcrO/t0SGeFc4LnxL/c/LXpSWMlDiLGICGKCCyLkG
	8tlv+fWPFYheSNVfRYDZiMnw9+IxH2l6BdBa8MH+FdHSPgQEVwMbH4+jHwvLrVs1hbrqP/0m8Tu
	QCXkHhW/HdUo1kx37TeGJgJ3T4OgGkEdB31gYyRSqwA0La5uEtwY/5oaZIYAnjPaTqgWCimOeaG
	6VHwiAPIOggFJqjWD19E9sfi8Gt8SbqbflaByYAsoMknmWznkexgUqUYGIfK8JwFjTiL9C+/+Ar
	hsS2WHuLLzXz4sVSSDbmMyyYbxGg0+s74bIr9H/C0hABh/3oSsENffrT3+o+4Mdpji11NoUs+Zv
	bztTUIsI9RTnQIGGLbyimp/9DUlvEo1z7oRD0kE36cBzrFM0RmLRRokVVuu2mLMugmNTNdB0IRJ
	hWgNyq3fOGtEu2CGbDi7U4q7wZmw==
X-Received: by 2002:a05:620a:199c:b0:8ca:fdc1:cc9c with SMTP id af79cd13be357-8cd5afcb9c4mr406353085a.76.1772654276950;
        Wed, 04 Mar 2026 11:57:56 -0800 (PST)
Received: from localhost ([184.144.58.243])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-89a0485ca0asm65014246d6.11.2026.03.04.11.57.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Mar 2026 11:57:56 -0800 (PST)
From: Richard Acayan <mailingradian@gmail.com>
To: Srinivas Kandagatla <srini@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jaroslav Kysela <perex@perex.cz>,
	Takashi Iwai <tiwai@suse.com>,
	Konrad Dybcio <konradybcio@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	linux-sound@vger.kernel.org,
	devicetree@vger.kernel.org
Cc: Nickolay Goppen <setotau@mainlining.org>,
	Wesley Cheng <quic_wcheng@quicinc.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Johan Hovold <johan@kernel.org>,
	Kees Cook <kees@kernel.org>,
	Charles Keepax <ckeepax@opensource.cirrus.com>,
	Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
	Richard Acayan <mailingradian@gmail.com>
Subject: [PATCH v2 01/11] ASoC: dt-bindings: qcom,sm8250: add compatible for sdm660
Date: Wed,  4 Mar 2026 14:58:05 -0500
Message-ID: <20260304195815.52347-2-mailingradian@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260304195815.52347-1-mailingradian@gmail.com>
References: <20260304195815.52347-1-mailingradian@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: DC9352074D9
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-271243-lists,devicetree=lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,perex.cz,suse.com,vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[mainlining.org,quicinc.com,linuxfoundation.org,kernel.org,opensource.cirrus.com,renesas.com,gmail.com];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mailingradian@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mainlining.org:email,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Action: no action

From: Nickolay Goppen <setotau@mainlining.org>

Add compatibles for sdm660 based soundcards.

Signed-off-by: Nickolay Goppen <setotau@mainlining.org>
---
 Documentation/devicetree/bindings/sound/qcom,sm8250.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/sound/qcom,sm8250.yaml b/Documentation/devicetree/bindings/sound/qcom,sm8250.yaml
index 15f38622b98b..63c744524e01 100644
--- a/Documentation/devicetree/bindings/sound/qcom,sm8250.yaml
+++ b/Documentation/devicetree/bindings/sound/qcom,sm8250.yaml
@@ -44,6 +44,7 @@ properties:
           - qcom,qrb5165-rb5-sndcard
           - qcom,sc7180-qdsp6-sndcard
           - qcom,sc8280xp-sndcard
+          - qcom,sdm660-sndcard
           - qcom,sdm845-sndcard
           - qcom,sm8250-sndcard
           - qcom,sm8450-sndcard
-- 
2.53.0


