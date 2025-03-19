Return-Path: <devicetree+bounces-158894-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 06031A687C1
	for <lists+devicetree@lfdr.de>; Wed, 19 Mar 2025 10:20:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 083FB3BDC52
	for <lists+devicetree@lfdr.de>; Wed, 19 Mar 2025 09:17:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7E1AD253328;
	Wed, 19 Mar 2025 09:17:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="psqRCYKa"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BAEA2517A8
	for <devicetree@vger.kernel.org>; Wed, 19 Mar 2025 09:17:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742375874; cv=none; b=AXjjgOaYqhaK/U2uqb2JN3H1dKUiWzbvd5fLuXkezCewsagFTnFIKITw0TQnDuhHbsk9H7w1qQFP7oxkxA1zvPvtnPHXFbU9HQratr97RXN8xaXy1B5uDPbYZ1Y85scE0c5+LGQPnIRfv2KxclSSlRv6KvrlJICZfN8TGjci5v4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742375874; c=relaxed/simple;
	bh=VPh5eje9bAcWDgKXkvNDiNcxKVyg6L/lyX536kltyjo=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=po9tpdixSjNm4k2FpFTr+pmSmZ7MJJ59/WcVICLVcvIL4gAeks18o/XNHrRndITSkn/yWcOvihJiQlIzWespBanpV4X1DwvwVrHRlEJXGOmayWS5XQ6m+l/c3gXIzjiFIM4gXxb9A3goVBBQEBWQE9vU75Ynkr9ZTX0X3OIthhE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=psqRCYKa; arc=none smtp.client-ip=209.85.221.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-390cf7458f5so5584887f8f.2
        for <devicetree@vger.kernel.org>; Wed, 19 Mar 2025 02:17:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1742375870; x=1742980670; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Eu9AneJ6jeTssLgq8R/dkhVI+8UdajKVGpFrU+v3rj4=;
        b=psqRCYKaXIvspoe0E0TDmR/BP5gsCMay1Pp6vir0zKoYOcoJVIgyw6O6Can4x4lTuB
         xFUf9vS6zEPzeTbMeqsrgoOw7D82kJ/nj0CNKqY1SECHlexuxaq3ugKMRpCKoc7T6Ss3
         JwDrUxzGUlRCegKoJ5qsWyN+jkUhNTgHiiofJhedVFhvS+KRdBZFwEP/A1yvGJiXCb0G
         VZZCmA78GLE1QgUQ4XBpC4gOPn1o7ccJZelqE1eVZMFEkUmEsCX8SxCCobVKoepC4kP5
         ChKxR5c7w9pdjUn+zB+n1Byc3Owa9bRdVQVj8RxT9TL3BSXsNjVfhNBA3TOqcy95Js1M
         kA7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742375870; x=1742980670;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Eu9AneJ6jeTssLgq8R/dkhVI+8UdajKVGpFrU+v3rj4=;
        b=WNGAlA0yZ8NBjSmqzXlnYkGg++uQsC1lvQNik5f7/ZP8UvTkNm30rJzRFdJuOg0whW
         0G+Far8Sy5QeVPTmOd/iNBvI5khwF3oGtMMqU+4sMFW0q2gK99V9mOyed3m273JRkKyV
         jDjQkjPhCuVC/VFLcg6rRi7BnFuLbvQJ/A7UGtzU3PhajYv4lknRqcBwO/vIvCxi2vHs
         /g4L82BDk9+EWpeScZ+RVulq/Q7fdNQeNzdU59kvHRCC3Pae+YeLFwMceqbgcdu2R8er
         OEGwd1xaVhJA/QnUe0n6gfeabI4bG7dKhs2as9dWf2NHA5//F5PThbyhM7lMNAymLZaS
         lgeg==
X-Forwarded-Encrypted: i=1; AJvYcCVSrB0bXvCUfwg7NeN5vSQ1d7JjC/DfEAesVOFriEXD/ETjXqMwELbODQrmK8pwsxEW+wTFkXzIlfb6@vger.kernel.org
X-Gm-Message-State: AOJu0YyxrbLqLRCTVfETM7O5qJHpNeSApaumzYZv5VKjz3yJ1+65JaUc
	SlVcJlmGMJnAqgBYljTeSG8CU0yDoLqroZpVld9m0UNDgpiQVCd3pBFdX8ua4qc=
X-Gm-Gg: ASbGncvxPvF6TyGYLN0D4ELAGk9uSHuSeb/29KVFMN+oA93iWrlcXxOqRaYypEiONej
	rVAlC61OY0sJuSzV/2GDJG2k1cXD7J6lNyS428jZEXJ8bzOIC8cmprRm3X6anQYZ3EuUGNLFAxc
	2yYHfNlDxZf+kYIFynLKqpQdtAzkZS/La1rouiZOy8rVRlUZcQfBJFqM1dAwADfkCWCnba4eL/C
	IIJST/BDW1XhIjlanKnpP6un1JhToSb9sUWWbgGQkr7fSnQibhwMxeIJMOXxvKD3CyIPQsR1tiK
	FS1IE6L+UgFFHXENGBLWHsFRJ3Mi1CcYYhPR41C70e/XiRaSEA7kdDj0PotyPyzZm3Dzcw==
X-Google-Smtp-Source: AGHT+IFM+lzR/VCSJcNgqIaD4wovGQBkSyZQxDj6HuZig4PP75GSKCAEII3ZXglrni0En0micDVRvg==
X-Received: by 2002:a5d:6c61:0:b0:38c:2745:2df3 with SMTP id ffacd0b85a97d-39973afaa73mr1518826f8f.37.1742375869548;
        Wed, 19 Mar 2025 02:17:49 -0700 (PDT)
Received: from localhost.localdomain ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-395c82c255bsm20023810f8f.23.2025.03.19.02.17.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Mar 2025 02:17:49 -0700 (PDT)
From: srinivas.kandagatla@linaro.org
To: broonie@kernel.org,
	andersson@kernel.org
Cc: lgirdwood@gmail.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	konradybcio@kernel.org,
	perex@perex.cz,
	tiwai@suse.com,
	dmitry.baryshkov@linaro.org,
	linux-sound@vger.kernel.org,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	johan+linaro@kernel.org,
	Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [PATCH 0/3] ASoC: wcd938x: enable t14s audio headset
Date: Wed, 19 Mar 2025 09:16:34 +0000
Message-Id: <20250319091637.4505-1-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.39.5
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>

On Lenovo ThinkPad T14s, the headset is connected via a HiFi Switch to
support CTIA and OMTP headsets. This switch is used to minimise pop and
click during headset type switching.

This patchset adds required bindings and changes to codec and dts to   
tnable the regulator required to power this switch along with wiring up
gpio that control the headset switching.

Without this patchset, there will be lots of noise on headset and mic
will not we functional.
   
Srinivas Kandagatla (3):
  ASoC: dt-bindings: wcd93xx: add bindings for audio switch controlling
    hp
  ASoC: codecs: wcd938x: add support power on hp audio switch
  arm64: dts: qcom: x1e78100-t14s: Enable audio headset support

 .../bindings/sound/qcom,wcd93xx-common.yaml    |  4 ++++
 .../dts/qcom/x1e78100-lenovo-thinkpad-t14s.dts | 18 +++++++++++++++++-
 sound/soc/codecs/wcd938x.c                     |  7 +++++++
 3 files changed, 28 insertions(+), 1 deletion(-)

-- 
2.39.5


