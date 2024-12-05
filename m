Return-Path: <devicetree+bounces-127174-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B54E9E4C49
	for <lists+devicetree@lfdr.de>; Thu,  5 Dec 2024 03:34:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2E6141881965
	for <lists+devicetree@lfdr.de>; Thu,  5 Dec 2024 02:34:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1806B18C924;
	Thu,  5 Dec 2024 02:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="HVtsZenq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 086A42F85C
	for <devicetree@vger.kernel.org>; Thu,  5 Dec 2024 02:33:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733366033; cv=none; b=fGbnmNoXJYYb3Cka7gU+SoK6wJIY+6Vi/pouV0JP+Lqrdrj2E+qsU4qiDIPUJ3vvZhFI9dQ2vkBfUNpDxmqSrWDlhpqqIETPJScimN3g1nOkzNr2SI0u6ELpSZHWApHdahByQ0aNHWbC4BEzLrxvUVmKXuL6qcXw9Dvbz01aJ9s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733366033; c=relaxed/simple;
	bh=xhvG2NwxZkcFR2qB1vfTSDmCdapS/aAksbx9vqP5zRI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=EY8qsLmNlo/ywwXL2HG+rF8VwH0BCBgVOx+uGL7MKvvpFvtua2z6t8POO9mlowTrF46jo+qWbVN7EpQHF97wo5SUpNMYqea5mOLGSldWLvABKD6LdVglMjvmjE3K/G6ZEQBehvL6OqTlEGz1Xmg4CbYJiB5oUiompWoYHKBwVHg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=HVtsZenq; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-434a83c6b01so2734515e9.0
        for <devicetree@vger.kernel.org>; Wed, 04 Dec 2024 18:33:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733366028; x=1733970828; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Tw/euE+jaRn8KaVOalk6xiOyoDYKCjli0xV5JRXUqKk=;
        b=HVtsZenqqmf2GIaHaHwMI4CQeBSGrP2f4KYceQoyYlX5igziiZQIR1068CCGOJxWrJ
         8cVYj9tRpbE2d6FNWADYkwUf/mPkTTbs4SMVab4CoNYBaaJRu7Tp/w/ZWCXZSisFLJGI
         yMfZP7szpmPqZ6qP08h9EMDa62W3Sh6/Q7iTwnzVBARES622ltZnwfWm9VzsomO89EWE
         rT/2uI+phns73rwwUEGI5+HUI6f69uUd/kPZD/Bpzh4nNFK5DsYV0gpMnZKTyiiWBCLY
         NuM/xw60tWyrpfns5WAyp9PY+WftTEcFiFso0I3ndYl0S4LwQuci5OgE0/8o+IcMj66f
         2ctQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733366028; x=1733970828;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Tw/euE+jaRn8KaVOalk6xiOyoDYKCjli0xV5JRXUqKk=;
        b=PKAtR7EAH+tEvyaa0fwDY2ZM9MfWE2hM5dscmXnzP84aglU0J6p6oLahnCAydJDZk7
         ALV6TsBPN7lhfnMQrhaN/8pT100kfURevJn5tsW3TdlW2lV/C163qWabXRSJZkqPc7ml
         9+bhQ/D6ODmnVUmZgKHjGr33n7owyq/Lzi1+BDSuPAijLXT4Qnc0/daWXDAFWqul+XT5
         STu+khxs6Nfk7kvRVAXablAT7gHXvSw51Ig2/g8t7pYxbXlyK0XnqSlaV82XAIjS1Exz
         jKaa+iUg0XS3xCmE30q5O8J7P+ZzCfdHz/G6OHVOuE+ZC7FH4DoERev+cM44ECiiZEph
         wSzw==
X-Forwarded-Encrypted: i=1; AJvYcCW7GixtMdkXOmV9ZpyPcyh+oY2CWCxYMGTWKZbpduNh8ozsPTsVTry5wFqgsXxnog32TIQyVKnnAhbw@vger.kernel.org
X-Gm-Message-State: AOJu0YwKheGcavM35HYTsWM2/jTRau1OsQQL5KOHzvOUzJ8E3rpYjdVh
	lOhsdrxyazw7WgfHOu8uelrZr3XKyFSbbUUCz8p6U/q564C0XpzaDklVbvfYkk0=
X-Gm-Gg: ASbGnctMgy9QKwvORv5WRenNjKw9YCemK3xY6rtM7fjit8gkswDAWh6bbSve3wPWK5u
	v9SghuySl3lFcsyy0XERGkGkJxNFAuCN4XZXm77IVNq3wd6SnYRvFAcZ0aJFGtQBkCcRrhZq8FA
	XEx6K+H+fjsDD3kuYmu8874HFexxH+9L6/Rxx3TJ3Fd+WkKebk0A6KqsRhRfJxpVbaY8j7Fw3Gc
	zqU77PYPrTUuCzihNCv+RYeZnVeReykZ/7SnU2p+fnj8VL7gkSvyF037HeG1UZP5Hwr
X-Google-Smtp-Source: AGHT+IGRZIMmR1wcEX/dxzQ8T/nOq0eVnMC5OkJbJ1F2kUPg8auZ3LPl2T+hZ3Yyor0+FmhMD22q3A==
X-Received: by 2002:a05:600c:1388:b0:434:a04f:2557 with SMTP id 5b1f17b1804b1-434d09b1575mr75575205e9.4.1733366028411;
        Wed, 04 Dec 2024 18:33:48 -0800 (PST)
Received: from localhost.localdomain ([2.222.231.247])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-434d5273440sm44444325e9.18.2024.12.04.18.33.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Dec 2024 18:33:47 -0800 (PST)
From: Alexey Klimov <alexey.klimov@linaro.org>
To: broonie@kernel.org,
	konradybcio@kernel.org,
	andersson@kernel.org,
	srinivas.kandagatla@linaro.org
Cc: tiwai@suse.com,
	lgirdwood@gmail.com,
	perex@perex.cz,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	dmitry.baryshkov@linaro.org,
	linux-sound@vger.kernel.org,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v1 1/3] ASoC: qcom: common: set codecless link to be a backend
Date: Thu,  5 Dec 2024 02:33:42 +0000
Message-ID: <20241205023344.2232529-2-alexey.klimov@linaro.org>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241205023344.2232529-1-alexey.klimov@linaro.org>
References: <20241205023344.2232529-1-alexey.klimov@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

When codec subnode is missing in DAI link description in DT
the DAI link codec will be set to a dummy codec and link will be
recognised as front end. Any playback attempt will fail since it
will not be able to install hardware parameters. Fix this by
setting codecless link to be a back end.

Signed-off-by: Alexey Klimov <alexey.klimov@linaro.org>
---
 sound/soc/qcom/common.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/sound/soc/qcom/common.c b/sound/soc/qcom/common.c
index 928cf5cb5999..e8ae15fcb1a3 100644
--- a/sound/soc/qcom/common.c
+++ b/sound/soc/qcom/common.c
@@ -159,6 +159,10 @@ int qcom_snd_parse_of(struct snd_soc_card *card)
 			link->nonatomic = 1;
 		}
 
+		/* set codecless link with dummy codec to be a backend */
+		if (platform && !codec && link->codecs == &snd_soc_dummy_dlc)
+			link->no_pcm = 1;
+
 		link->stream_name = link->name;
 		link++;
 
-- 
2.45.2


