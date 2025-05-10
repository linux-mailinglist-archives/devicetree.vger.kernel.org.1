Return-Path: <devicetree+bounces-175846-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F4A7AB218B
	for <lists+devicetree@lfdr.de>; Sat, 10 May 2025 08:27:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 08429188C9AD
	for <lists+devicetree@lfdr.de>; Sat, 10 May 2025 06:27:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E1FDA1E1DF9;
	Sat, 10 May 2025 06:26:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="fZ2geVB0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AA3E1D7E42
	for <devicetree@vger.kernel.org>; Sat, 10 May 2025 06:26:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746858402; cv=none; b=Ce2ALz0MVjgITLMpB6F9GLQqaVL0F7to6U63CE7RCxbWTr89WYihPp7zXSkcdQE0QymZHkLIdGIiEQbris01OoUuBueLnSWBW5lc7oq6OQThnwtetx8bYCAvRNEIK5Y6E+4Fv+XbHAz3V6jt92MplC4GGXRF5cD7hNiRQTycjPg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746858402; c=relaxed/simple;
	bh=gNEeRP8mAhgrRFkzqhVHnS8wxj5hiHI7YASepNoiViA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=sjzbHx4+sD6OZxnHDfimlIFBeboHtfdVOWUKv1StjNi2Eb7G9s5mOhlIdmhMkmGVlNGrTfOstX4g4zlYnONw55UdDPVqhvnwkLIFwHW3KgyEeDbo1BufKSUPxALTRwq3a7CQJ/gNmoWBdGnrX0I2wUP3/mAWWC2qmAJUnECh6mY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=fZ2geVB0; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-440685d6afcso29870235e9.0
        for <devicetree@vger.kernel.org>; Fri, 09 May 2025 23:26:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1746858399; x=1747463199; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TC7lxh+szJyHIF0miY38yzEj1EvzlHkiCZowZ1EXMgo=;
        b=fZ2geVB098lLkFXJ0iALI4oylox6jNsuSxEhWIhKs+PeZq+hXhXhO8yuaTC1f4xzTC
         JLFymLIsYw2XpyY/KbpWSqzjwaOUVKSi57fbdZYrJfuGcdiXNmI1VrSpV6bgJyhaD4Ow
         RZVX4LBN3tKowTc4tbviioq5kvEkHZTL2OAOFgrEXgOwHzyPid09AEBUAa+eipsBnFUc
         ubI+fYu2Rz+4rbXJtegbnZUoqneMaPU0n/imV7Un8CqZMtj5QrW9+SO3j/INxmg0WUZB
         YDAO1rEGDyvGClPP3zF9RO6MF5rHs8dY5JOyhgMNCg7Wr/B/7J3PxuSNqVLURnfRHwJl
         B76Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746858399; x=1747463199;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TC7lxh+szJyHIF0miY38yzEj1EvzlHkiCZowZ1EXMgo=;
        b=M9EK5E8BWjGRRzcaoS6bUsXYFkjsSNS7bIeaUAivqZ8wxIG6knb6cbLCr3MbuAGnoX
         TDvyoyvS3l1e1g3ArKari2+mZGFO5X+vBLDk+avAjgQXBpGcb2hW/Mz5QP3/xEJbpVFF
         GA10wPJkB7hOXO9Vr5QOMIPfnqbjqorDJVvi63U4+UVRbLlsCH0Ga4yOxgMbPkAIXfEP
         kmHhT/Sds2BuZItThi2QetL0sI3Hmwh7d8/IPRLcnGPrYm0N6YmFmpcf9vlR73O0v6Q6
         /EFUKgiDvi6dH+Jo8pdll/SCbyq0YBavfxwFceSopkKuSHl7lKBf7e+ENcf25iWqhrlB
         Ip9w==
X-Forwarded-Encrypted: i=1; AJvYcCWs5l4Me9gXiYF2787ZEpy1McfgB6dux/A4kvK8ZrSEdSUfzSMC9PhujjPyIyFNXwo9FhqI42Q74hWX@vger.kernel.org
X-Gm-Message-State: AOJu0YxD5b7dsg1fQK7VYu5HT/7JmJ2NwnQ5n21L+5v5nJIyDV08yFIO
	jPvg15a3ARg73uY9uJI+RFr0b3pnqQdO6v0E3/yefId2By/YVWSvR1RzDsnWNw==
X-Gm-Gg: ASbGncuqiVn+bXt/EjTop5ijJXz9KiZDtwVkqLpazNEIY49AcX7pKDa6mrTXTwvhgBu
	Wnq0WHT7B4J0RnbQpqEeZtIiiA7FtU5q9jt+YtZqCxWCi959f8/KNVXaI5XfcGTD5trS1riJ2s5
	qdAzCzbfXmhlr191an7rkoyClyQxpB4htSvwQZhPd+x+GihfAUYD4OqiYkbHFbTcXmWfm4Lz3LE
	F6XllPk0kNMYNhmQyDVDB9xhXwhjISw4sW2q+vBex1r5x06XlTH42IQkqZmSed9u1fRm6+A5Rym
	FQqpegSY3xRQIXIZrsmJO/ZUe+b7TtNUCjKDQUzCUoPIHq1VHnVVFvj2Qxpx04jTQwaRPGoGqP3
	49jDJOZaAp3szvJgtPP4mCz8pM1fI/ws/suA0
X-Google-Smtp-Source: AGHT+IE+2HRAOqGjukyBpZGu9Jr1PqwNh0UZdkOulj66hKHxdz7J7jmR3KvyGEl2TsXr+I8lrINlaA==
X-Received: by 2002:a05:600c:c0c3:10b0:43c:f3e4:d6f7 with SMTP id 5b1f17b1804b1-442d6ddebbbmr39681085e9.31.1746858399483;
        Fri, 09 May 2025 23:26:39 -0700 (PDT)
Received: from thinkpad.. (cust-east-par-46-193-69-61.cust.wifirst.net. [46.193.69.61])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-442d146af31sm86116175e9.17.2025.05.09.23.26.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 May 2025 23:26:38 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Linus Walleij <linus.walleij@linaro.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	"Rob Herring (Arm)" <robh@kernel.org>
Cc: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] dt-bindings: PCI: Convert v3,v360epc-pci to DT schema
Date: Sat, 10 May 2025 11:56:35 +0530
Message-ID: <174685839013.11086.10599416175883507159.b4-ty@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250505220139.2202164-1-robh@kernel.org>
References: <20250505220139.2202164-1-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Mon, 05 May 2025 17:01:37 -0500, Rob Herring (Arm) wrote:
> Convert the v3,v360epc-pci binding to DT schema format.
> 
> Add "clocks" which was not documented and is required. Drop "syscon"
> which was documented, but is not used.
> 
> Drop the "v3,v360epc-pci" compatible by itself as this device is only
> used on the Arm Integrator/AP and not likely going to be used anywhere
> else at this point.
> 
> [...]

Applied, thanks!

[1/1] dt-bindings: PCI: Convert v3,v360epc-pci to DT schema
      commit: 9a5f8c7a81cde01738d4fa25624669a3d6f859e3

Best regards,
-- 
Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

