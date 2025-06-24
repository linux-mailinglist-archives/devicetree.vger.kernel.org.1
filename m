Return-Path: <devicetree+bounces-188983-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4109FAE63DB
	for <lists+devicetree@lfdr.de>; Tue, 24 Jun 2025 13:49:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 461963B4B78
	for <lists+devicetree@lfdr.de>; Tue, 24 Jun 2025 11:48:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8D6ED28DEF0;
	Tue, 24 Jun 2025 11:49:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=codiax-se.20230601.gappssmtp.com header.i=@codiax-se.20230601.gappssmtp.com header.b="ckVOXXo7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8A5D28DEF9
	for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 11:49:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750765747; cv=none; b=KD//y9zIJV2NSG0Exq4lqknUdDyebSLJm7Bd8zCXlwd/9SE1OBmdfVopXTyB5o44MeU7Rbft7t47eYLDAlugciWtoExe4VuIyTFqHs4UXfFxvkXtxQCug1tYYVjSq1Ibe7zmiEoqy/7Jyj2kh3hvVNUtv8BmY9ZxKzz1ygvUFOU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750765747; c=relaxed/simple;
	bh=UxTC9xRj/zj8ryzAX8TqE4eUO7zS1dCWnLFe+Zg1R4A=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=tOUPEoe7CrS2iYk9vi4fldVCkvqX7KCMfVakO25I9XDLc/md4U/edxa+cA3V6NNzKH0EyQSh/vExYQu3kOw+dXOa6L1EyBMKTC+E/wBGfQ6zV9PS7F8edLrqPGIKjpiL+/yY5aqnOPcuTCvWlsij2ulQ7LdYG+RjaA/TxH56DNc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codiax.se; spf=pass smtp.mailfrom=codiax.se; dkim=pass (2048-bit key) header.d=codiax-se.20230601.gappssmtp.com header.i=@codiax-se.20230601.gappssmtp.com header.b=ckVOXXo7; arc=none smtp.client-ip=209.85.167.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codiax.se
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=codiax.se
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-553b16a0e38so352025e87.1
        for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 04:49:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=codiax-se.20230601.gappssmtp.com; s=20230601; t=1750765742; x=1751370542; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=YDe4d6DAb1FPdDH1nEMDmv6KDrUedHX2gEqJkiLhXb8=;
        b=ckVOXXo7T62cvZjAdf7HtZTh3MwLJVlRzVWw81NMJaoZQvc6AiFjggK+q7UcWOfryc
         UI82g5i0OwSBdRM0jNaF64UhWfPdMsCKKbCf5OedxpzfAUdq5UHGyjm7CnPq7uDiNjaI
         XSwOsdfOFIdky/c7Eu0sEZA8ScNGaiLPR5/0PDzOS4hBdFJVkdsHEvPnluLJz7JLu4Fi
         7XrfpUz+pOzqez2kAm5otbQVKrKAYUioT9FWTQ2OEmjzc4ZjCeMhHmh6R5CDy6ESPdUW
         CWulya1J0wYB8sd9h3zuIcNDNDcbQxJrjnH4TJyUpEnHIOx0kdKh99HOW8ssF5VzjwkG
         gWhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750765742; x=1751370542;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YDe4d6DAb1FPdDH1nEMDmv6KDrUedHX2gEqJkiLhXb8=;
        b=CHjlRKbrk8QwbRC7j9HohwN1n7ckSROhkGwrhnO0ienrD4cI3AS43e2m2zJEZEZay6
         /84ygPL4WrhRdOWA/AKje6u04h8qFJYQ4VQoDcth+5KwjH8ejov9ZvnbY2ZRd/ZSB9L5
         2kxxaAzBgQPOJK3TuCJLtWqiGResjKkMab4eY5xfUaQh0+v5AGjzKh2e2FkvDiPqU5xf
         sSceupRbDBR4PwTtEpMJ1qlBDV8FaxCzmIqnSQepNEM+++5Lejxk+IasN24fZLudnM5m
         BPDUi8XMa2Iby7IZpyfoccUegn2Le46CiA8G1D6R3PeLtolJ64S1rVNcx4GW9VToLNdG
         xnBw==
X-Forwarded-Encrypted: i=1; AJvYcCWeB2p232C3lv670dUFbdKhnGyuzaOmnrXaJZS05NdfA/kXuGgDcSO+f0Yg67/juleRACEy3EV6yAqB@vger.kernel.org
X-Gm-Message-State: AOJu0YwTFOhgycmXIB+K9fXkwJIAULtAxkUQpQbDqKH8PaOpmMgqsxZ6
	dRec6V//ulgErhAalJzdfZ0Xw9H68mzHEvBRxrJaXBu9OQJ6RKY48qwiiDrEtogpmm0=
X-Gm-Gg: ASbGncu+saJP9liQ3JxDctZN4q4hiBVsJsY0I1EmX1WcCQNuEvldZHBzqTiRAPyNaEo
	52jwCuFaJQ1/O371EGQ5loCixj+tVqeoWMXth/0BdkzjjM4tTHJfhOFTGspZy7YOC4dCeaCo3vH
	v51DLzYcVUtuccNWPbzgaFwJJTICUziLdWuqwTV+03zMic2ZQfOsv9nml+/vePKFcek/P38HuLe
	b7igyHM9MdpnO9vL6rqjd4FHKdspXHHbgwXYeq38oEne5JkW53iqfqnWFxqrr1wgm8Otz8Oy7pt
	TocLfZE30wocs1wgOI0+DKdTrHKAeQ3fxbySgfnO5BYSFAXs6he1I87mfB+Vw44BSLTBRavgzWk
	JvAUyQEVu/dQpK5kTgWRvPW2TwD9oRu8S
X-Google-Smtp-Source: AGHT+IEfSt7tNNrH2iQBY0OqVXLuy72EhSV4+ycj/JlWBqXpOEeYEFU9T6O3BE1zu7c7pWadRz2Lug==
X-Received: by 2002:a05:6512:12c8:b0:553:2e37:6945 with SMTP id 2adb3069b0e04-553e3cfda88mr5286333e87.32.1750765741784;
        Tue, 24 Jun 2025 04:49:01 -0700 (PDT)
Received: from falcon.codiax (h-37-123-161-8.A137.corp.bahnhof.se. [37.123.161.8])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-553e41c2e5csm1806724e87.155.2025.06.24.04.49.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Jun 2025 04:49:01 -0700 (PDT)
From: Albin Tornqvist <albin.tornqvist@codiax.se>
To: tony@atomide.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: linux-omap@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	albin.tornqvist@codiax.se
Subject: [PATCH] Fixup BBB dts typo
Date: Tue, 24 Jun 2025 13:48:38 +0200
Message-ID: <20250624114839.1465115-1-albin.tornqvist@codiax.se>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Hello,
while trying to set up the Beagleboard Relay Cape for the Beaglebone
Black i found a typo in the dts for one of the pins. I spent some time
pulling my hair, hoping this patch will save some time for other devs.

This is my first contribution, I hope this is the appropriate mailing
list and that i got formatting correct.

The testing procedure is described in the commit message(for the first
and only patch in this series).

Albin Törnqvist (1):
  arm: dts: ti: omap: Fixup pinheader typo

 arch/arm/boot/dts/ti/omap/am335x-boneblack.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

-- 
2.43.0


