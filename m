Return-Path: <devicetree+bounces-14390-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id C38667E3FF1
	for <lists+devicetree@lfdr.de>; Tue,  7 Nov 2023 14:21:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 53EE3B20B79
	for <lists+devicetree@lfdr.de>; Tue,  7 Nov 2023 13:21:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CD3312F503;
	Tue,  7 Nov 2023 13:21:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="JvfhQHWg"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 872832DF91
	for <devicetree@vger.kernel.org>; Tue,  7 Nov 2023 13:21:25 +0000 (UTC)
Received: from mail-lj1-x229.google.com (mail-lj1-x229.google.com [IPv6:2a00:1450:4864:20::229])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DE95193;
	Tue,  7 Nov 2023 05:21:23 -0800 (PST)
Received: by mail-lj1-x229.google.com with SMTP id 38308e7fff4ca-2c54c8934abso80117591fa.0;
        Tue, 07 Nov 2023 05:21:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1699363282; x=1699968082; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=MUi45uotdvyO5SvA8WtxVVI3cIS2ABVk7+gmYyea7NQ=;
        b=JvfhQHWg1CG4NkDiaRvbKJ3TktRJ1GXgTc0jUfTfP2ALISYfXokcsTXDWw/OyawdfP
         y72+U0Be/htGIINoqbCwsQ5emLLcVj0XVKpP749c6UJYHrU4KY6ELI2QD8uQZoAHXQNU
         EOlRG2gj99S1UfDdrakMym3nOTLv8FiRBM8hNjogA6aNrhBb7EW9BTcxhV3g3xKgHH9t
         ufvkrz0e13HYsj6SpJduPcB/7NSyExVV2IMdfIA43SvB1dMLMGPQWxugjpkZxhn0STfM
         0HIrSSubm2IpdGHYGmYeAIbDOxmbPV7WOBl9ItrX9MwpslA+kwXqVVFaTkuo0gsqVb0J
         eKrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699363282; x=1699968082;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MUi45uotdvyO5SvA8WtxVVI3cIS2ABVk7+gmYyea7NQ=;
        b=AZ0jJoTJ/kmcCkUBXzZqUGujVsgWl1BbsqaUns3Mg/6c/0C/u9cLj9MhA5MZUl16/j
         b0laZZ1FPTYIbKrMQyVmwXmScwtxeSgX5cuUtcoRb75gT63xc7Y/DuEHHMbGcQ7OOSZr
         sDUd1iXtK5SBg7fCeo40mxgWYr9Y4N4h2rdoUy/OGuxwGF+FQ9XVOknauX/9q1uuh/8W
         dMZvHZJmaGcRVhZ4gpy3TdrQsbRH1lly4w6Re2u6KCvdth3hZqsrp25Nm4pYkPVz9mFn
         4lHmFvEp5ngnyavmloOARvkZOe9EyWtvLjqkA4euarRiSHZwGZXwgHZJiMme+pPk5f5f
         PpQA==
X-Gm-Message-State: AOJu0Yz+jrwyj+P57R7C4dYcXE6/DbFhW6GoeYoGg6j7pBMhOWc69iq/
	uwfUZBpEjfnJ6wWGEGYxgRsbUarv4WhHUw==
X-Google-Smtp-Source: AGHT+IFjmb8+t40a3B6RdTpZwfkF+fKs31Rm+fImNN7KFuFw04Vq8jI/nM8jWSmRpWOUyJOhVCk1hw==
X-Received: by 2002:a05:651c:2203:b0:2c5:128c:fae8 with SMTP id y3-20020a05651c220300b002c5128cfae8mr30885000ljq.30.1699363281912;
        Tue, 07 Nov 2023 05:21:21 -0800 (PST)
Received: from ubuntu.. ([188.24.51.27])
        by smtp.gmail.com with ESMTPSA id w7-20020a5d5447000000b0031980294e9fsm2356297wrv.116.2023.11.07.05.21.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Nov 2023 05:21:21 -0800 (PST)
From: Ana-Maria Cusco <anamaria.cuscoo@gmail.com>
To: Ana-Maria Cusco <ana-maria.cusco@analog.com>
Cc: Lars-Peter Clausen <lars@metafoo.de>,
	Michael Hennerich <Michael.Hennerich@analog.com>,
	Jonathan Cameron <jic23@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 0/2] Add ADRF5740 driver
Date: Tue,  7 Nov 2023 15:21:15 +0200
Message-Id: <20231107132118.1165494-1-anamaria.cuscoo@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Ana-Maria Cusco <ana-maria.cusco@analog.com>

This patch series adds support for the ADRF5740 Attenuator within the existing 
HMC425A driver.

The ADRF5740 is a silicon, 4-bit digital attenuator with 22 dB
attenuation control range in 2 dB steps.
It offers parallel control mode through four digitally controlled inputs.

V1 -> V2:
* dt-bindings: arrange entry in alphabetical order
* improve title clarity

Ana-Maria Cusco (2):
  iio: amplifiers: hmc425a: add support for ADRF5740 Attenuator
  dt-bindings: iio: hmc425a: add entry for ADRF5740 Attenuator

 .../bindings/iio/amplifiers/adi,hmc425a.yaml  |  4 ++++
 drivers/iio/amplifiers/hmc425a.c              | 23 +++++++++++++++++++
 2 files changed, 27 insertions(+)

-- 
2.34.1


