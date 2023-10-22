Return-Path: <devicetree+bounces-10593-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E4547D22F4
	for <lists+devicetree@lfdr.de>; Sun, 22 Oct 2023 13:40:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 858E01C2096C
	for <lists+devicetree@lfdr.de>; Sun, 22 Oct 2023 11:40:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EE2C8613C;
	Sun, 22 Oct 2023 11:40:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=aceart.de header.i=@aceart.de header.b="MbFoa7D0"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B50F6FAE
	for <devicetree@vger.kernel.org>; Sun, 22 Oct 2023 11:40:46 +0000 (UTC)
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8E880112
	for <devicetree@vger.kernel.org>; Sun, 22 Oct 2023 04:40:44 -0700 (PDT)
Received: by mail-wr1-x433.google.com with SMTP id ffacd0b85a97d-31f71b25a99so1596762f8f.2
        for <devicetree@vger.kernel.org>; Sun, 22 Oct 2023 04:40:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=aceart.de; s=google; t=1697974843; x=1698579643; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:organization
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=SAtwbRjnY+U/XLUS1QtVkAFPEpVXUGS+vk/XhP3IX0E=;
        b=MbFoa7D0K+IwxYnS6YM1aa4soBreWtqsQ7o+8gAMNDwRlpvKngNUU+OatrNiUWZJtE
         ZoXxbOUDehfDUVrJztnyQMjB1OA89OSH+LVO1ORAqXWTZdPnGWjrG4bLUxaizmCKUitf
         bH2NTVAiLZHePZUrJCySLL0VMci7zF+FFYG2/y5fAMRiJ8JRc5YXu9L7BC1bGUIefMpq
         QPgUnnbTTpV/VGkosL/wxQdlV8P/WmQydTVp7uQDtgVnwsYjIh3BBzYa7mZ3PpGmS/eP
         guhYU8yNLE+evBlztk16ijWKw4KpLj9J3vqJLTt3Z0u2JfXWl2aH/1YZVPANzGeC2UbB
         eWRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697974843; x=1698579643;
        h=mime-version:user-agent:content-transfer-encoding:organization
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=SAtwbRjnY+U/XLUS1QtVkAFPEpVXUGS+vk/XhP3IX0E=;
        b=pU410ulTuVFNdjEcBdG1g2ys7+OhnvuscMe7ojcPfrgLoCP0Z+X4By/Z4ivwc0IB+i
         MQYGAXZm3Vm+aigh+39d7s2XiBvfRI7l1e6LiBVwL/PRyvXTaS1arbJSKZnLLOIfasEE
         Dy7O7xblKUJy8ZH5EbssZUJ0+xhriZYCXBnTc8Ox47dNpNEQVLmbsN8xeHBfgeo2kNC6
         B0khCSeIdbox1uNkk6rm5EZejY74+OAisrfU1v7d2GfzmvSOdTOLrDtu8GHKd4rJYViE
         me4/1yTbZxHdTJaYBiVf2/nIHTNUOGYyNYkamaRD8CBJ/HbGKtaaHoY++oqozsGQDou8
         5nAg==
X-Gm-Message-State: AOJu0YxbWP4iY/bN1VQd9gBh0ancz8+tZfO1uChN3QIJYHSi+k/CL+8G
	ulNIxAVLygpZFiVRGEhNSHaMwg==
X-Google-Smtp-Source: AGHT+IEyoCnb5m/VQGuoPz9dsEtgdL3tEaAAIur+/1/IMdFCSP9/cbYT4lGJX1CZ3WYqfOjrj0+f5w==
X-Received: by 2002:a5d:63ce:0:b0:32d:bc6e:7f0e with SMTP id c14-20020a5d63ce000000b0032dbc6e7f0emr4913874wrw.3.1697974842829;
        Sun, 22 Oct 2023 04:40:42 -0700 (PDT)
Received: from ?IPv6:2a02:8070:d89:b820:87f5:4b33:b582:39f3? ([2a02:8070:d89:b820:87f5:4b33:b582:39f3])
        by smtp.gmail.com with ESMTPSA id h2-20020a5d5042000000b0032d886039easm5496136wrt.14.2023.10.22.04.40.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Oct 2023 04:40:42 -0700 (PDT)
Message-ID: <fc5234cd33b78369f792479795abd02710dfcdbf.camel@aceart.de>
Subject: Re: [PATCH 1/2] dt-bindings: arm: qcom: Add Huawei Honor 5X / GR5
 (2016)
From: lukas walter <lukas.walter@aceart.de>
To: conor@kernel.org
Cc: agross@kernel.org, andersson@kernel.org, conor+dt@kernel.org, 
	devicetree@vger.kernel.org, konrad.dybcio@linaro.org, 
	krzysztof.kozlowski+dt@linaro.org, krzysztof.kozlowski@linaro.org, 
	linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org, 
	lukas.walter@aceart.de, phone-devel@vger.kernel.org, robh+dt@kernel.org, 
	~postmarketos/upstreaming@lists.sr.ht
Date: Sun, 22 Oct 2023 13:40:41 +0200
In-Reply-To: <20231022-arousal-glowing-f72c8f2e44fa@spud>
Organization: aceArt GmbH
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.48.4 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

>> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>
>How come this v1 has an ack?

This is supposed to be a v2, but I had problems sending it correctly,
sorry
https://patchwork.kernel.org/project/linux-arm-msm/patch/20230916134147.163=
764-1-lukas.walter@aceart.de/

