Return-Path: <devicetree+bounces-78274-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BCB4911B6F
	for <lists+devicetree@lfdr.de>; Fri, 21 Jun 2024 08:20:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D4CD11F24326
	for <lists+devicetree@lfdr.de>; Fri, 21 Jun 2024 06:20:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 33E2E16C867;
	Fri, 21 Jun 2024 06:18:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="DcuIwLiF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com [209.85.208.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71A8D169361
	for <devicetree@vger.kernel.org>; Fri, 21 Jun 2024 06:18:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718950687; cv=none; b=KISLLoL+abCAEJtIh78k1g03WOBTGlMKbAyBrWH7QiDO67icuZCM8ymy6ATsVu0uJJ8X1YKTyi2f0l3OCkFxffj4I5hQZm6QYc7f0lKD/aunpjFvwVJs8InvF4ySiFEqHThedz7g8MJ4eHGqxgBCiRQVGVKusk486VLLFA6j1eM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718950687; c=relaxed/simple;
	bh=VGR9p8HrZ0skR9hNbmy+9RsaB8lwqP8H659QFMzdtL8=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=hci6aVOcQbTYP/IyymtPyZ2+OcSO4MQF3MdHEd2e1NtiY4PwzkIeRvmuzKQDatNY8dyNonWnYSxTSXhFbx4hT/hDpkcQ8H836YrqVb8s/30YzOdVv+YGg27+YsJkk0dIIpcHuWgAMxZgCyq9ijhficdNJUXd2JwD91L+bM2VUkA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=DcuIwLiF; arc=none smtp.client-ip=209.85.208.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f171.google.com with SMTP id 38308e7fff4ca-2e72224c395so17474831fa.3
        for <devicetree@vger.kernel.org>; Thu, 20 Jun 2024 23:18:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718950683; x=1719555483; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HYqfWWrei0iPzIJrEyTnIBhjsFgGf9hoiPEtzQnSzo4=;
        b=DcuIwLiFRkSlZ5YlYOiX2aGqgwZGrwI+Bj1XbUqRRjnrD9UAwOwJySEAz5EQw+HpSa
         P7R4a55GtBUL/3dzJ0kEQwm4fxw4ypdmzkEJTCPYWN0fpsSINUM0QWnbasFJtXt5EVbz
         XwmgYtg0w8gMADSG9dqQsQQAFvuWlag+F8QqHwO5ujAV+j2bzi3Vn9z+v5lyr7bT+mqr
         hxTbQey54D13h0nnVenPO90dpgl7sfjoU601ke76W77Q1sDL99tS0uJgwaxOkS+OpxZR
         ANLA0IGiLa/Y1snJ6lFN5WfgvS0Y4Y38n6NU3thU5nRWlqYOsALVpn18km8IsvgWh/6A
         ttIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718950683; x=1719555483;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HYqfWWrei0iPzIJrEyTnIBhjsFgGf9hoiPEtzQnSzo4=;
        b=ERfUwp7S02H6atMcVosZzcalVOdwJoAwPDQPfO8g/vztaHemjtJongyZeAgbyrW3Gv
         YuQ0X1ef7veHJgSid2+hJfvQTXZvgjQgmq0mvZbwKCL/gvnaZE2KREA6JOO4JJCVj9vA
         iQeZNABe4S2tSL3hx9QF8Rt0X1Tl7zrQ+vuoqdOiMVY3SrenemUmk/bkfCmPNWUf7WW+
         CUfMarDj4wPaEH1ng7WZQO80C/NuFtW4wy9wKy5P+HopS6a391EsYWr/xh+OLSes/zhj
         cAaATm8tNxBTkhnjVtqKi2dQNSHAfoGZ+2HqqjrzcIb22tl0RX59gW/XNRlMOwL2UUnn
         +apg==
X-Forwarded-Encrypted: i=1; AJvYcCVr/y2zvrbs+sd5CdE/wlxmdk9yoh+hEF7VJ9hn4oCwyan/kVLDVU2KYau+5G6JUkSJE5VBOhuDR8dd4B3AV8wJiAB7pNXpRkL3WA==
X-Gm-Message-State: AOJu0YxFQnG+nhFbPsIizmOCKIX8ZExGRwC2vBW5Mm6jD95v8tD2z8gM
	VmvMksqg5HXJzyJlXsUb+6vsgezseKZvTdeT2uqOJtCGlFIPlrDX8SVLO1z/89c=
X-Google-Smtp-Source: AGHT+IHSUvrRscBpYllGrv5HkTVUXqHP3JrGdwPNsMjrWntLYW8YioRdDg4QeGt9fNrzghzXbkF5eQ==
X-Received: by 2002:a05:6512:2154:b0:52c:8786:8aee with SMTP id 2adb3069b0e04-52ccaaa21b9mr3850160e87.56.1718950683538;
        Thu, 20 Jun 2024 23:18:03 -0700 (PDT)
Received: from [192.168.1.195] ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-42481910fc9sm14075635e9.33.2024.06.20.23.18.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Jun 2024 23:18:02 -0700 (PDT)
From: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Matthias Brugger <matthias.bgg@gmail.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 =?utf-8?q?Rafa=C5=82_Mi=C5=82ecki?= <zajec5@gmail.com>
Cc: Andrew-CT Chen <andrew-ct.chen@mediatek.com>, 
 Lala Lin <lala.lin@mediatek.com>, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
 =?utf-8?q?Rafa=C5=82_Mi=C5=82ecki?= <rafal@milecki.pl>
In-Reply-To: <20240613195933.31089-1-zajec5@gmail.com>
References: <20240613195933.31089-1-zajec5@gmail.com>
Subject: Re: (subset) [PATCH 1/2] dt-bindings: nvmem: mediatek: efuse: add
 support for MT7988
Message-Id: <171895068129.13708.1096581925080498060.b4-ty@linaro.org>
Date: Fri, 21 Jun 2024 07:18:01 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailer: b4 0.12.2


On Thu, 13 Jun 2024 21:59:32 +0200, Rafał Miłecki wrote:
> Add compatible for MT7988 SoC.
> 
> 

Applied, thanks!

[1/2] dt-bindings: nvmem: mediatek: efuse: add support for MT7988
      commit: 35636e92643ecface9655eefa50370df77f73e17

Best regards,
-- 
Srinivas Kandagatla <srinivas.kandagatla@linaro.org>


