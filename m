Return-Path: <devicetree+bounces-72390-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 01EDF8FB962
	for <lists+devicetree@lfdr.de>; Tue,  4 Jun 2024 18:46:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 94D6F1F25CE7
	for <lists+devicetree@lfdr.de>; Tue,  4 Jun 2024 16:46:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 55F7414884B;
	Tue,  4 Jun 2024 16:46:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=freebox-fr.20230601.gappssmtp.com header.i=@freebox-fr.20230601.gappssmtp.com header.b="AQ4iGJ2L"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15EDB81721
	for <devicetree@vger.kernel.org>; Tue,  4 Jun 2024 16:46:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717519570; cv=none; b=BSNBF3hV05EUpnEbKYW1m9BI6+gkRx2sJ7CyeWfhVgXuTPeNi0KCruXvP6SdV1B+BVtrmfsT613MlERqO78yx/0q4cXgWUAaqZFF/F30mMhZxLkqQD06tXGXKX9OmEkAFzVxGvBYzv+h+GkGYRCAwQQW/gSQmHdFIsAoVifXJIc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717519570; c=relaxed/simple;
	bh=sjUrVCVewPMi+6WKVBqLanHI9W98UentqJuOeu/CQAc=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:Content-Type; b=cn1PeBhev0wQxExgzpiWn4A4Vzm6StasxLOD6uQcI//3Bjc7RoJc5d3C1ZGCG6DZiOnGbhK5toUrMECCcIR2OoAHj1E3lzXAxTpTaq6i63pfvA2mgS6j9fV/PlZGbr3jDRSn4Z9gFNgMimmM83Dcadb8T6L9fW8bYxbF0JR5dmI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=freebox.fr; spf=pass smtp.mailfrom=freebox.fr; dkim=pass (2048-bit key) header.d=freebox-fr.20230601.gappssmtp.com header.i=@freebox-fr.20230601.gappssmtp.com header.b=AQ4iGJ2L; arc=none smtp.client-ip=209.85.221.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=freebox.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=freebox.fr
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-35a264cb831so5279593f8f.2
        for <devicetree@vger.kernel.org>; Tue, 04 Jun 2024 09:46:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=freebox-fr.20230601.gappssmtp.com; s=20230601; t=1717519566; x=1718124366; darn=vger.kernel.org;
        h=content-transfer-encoding:content-language:cc:to:subject:from
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Iad7um1wy2LV2KGVzAikoqQybVQFvP+KXglo1zrKD3o=;
        b=AQ4iGJ2L20JyXOscur1EewIw3HeVfXe2GLJK7v/AejPkvTVbnyts6mNU/z11IU1vWA
         lj0ZCDNPRQ7UJHDexO6x3CL9zBIaoNxbqmKpBmFbLVO+3X6/77mMp65SCZeI2HpEPAH3
         ZL8pfPj2tgSckkkCGCEBJlU3yNH4IWTWCS6bP9w/OgnrUYpzS996CWk7zoR2vv0kF8Mn
         xaVQRAgxb/bTXW9TpE0F3BXc59i1Xu4ToPeQYgOR0aFizmPL7nY3yoA/EInI3VzqRT0P
         baPEYOEl8UWNtS+rauxTldH0IamdwTsLXT00KyM9ff7dqjX68CV5IBoWhyz9ZaCEOqz6
         xJUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717519566; x=1718124366;
        h=content-transfer-encoding:content-language:cc:to:subject:from
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Iad7um1wy2LV2KGVzAikoqQybVQFvP+KXglo1zrKD3o=;
        b=Jf0n0q/BoFGQLvB1W50AeDLEXKuR8rJij/5l8E27Sot38hO/LppV4l84kwC9wWXCfO
         OwNZBb2x6rZIpugjaB6r2+JUcXTFMPr3T8mxM65gLe5WqfezRZ/IJe+IRAg8XTj7XWdX
         uSVjWdvREfSOsQnlsvqKiIFoax5sf/iTrKA/YtlxzGN6LKJyMxKUBUjpiS9hdm9rxFw4
         Q5fRLlVJykGH9WIVp2IBYFQVqpPaEgDG8oF0orlySKwvxZrLO21gT3KOUSq8kgio8sif
         xSzeeQuKVI+04X8+pkjloF+vPr5v2DkNp4gLiODt8P3Q8i5LbDn6Xx+n0pqaTuWDDLao
         5V4w==
X-Forwarded-Encrypted: i=1; AJvYcCWcW9qcQOPQ16FwtfgxLyFUIpWOIYiup4XF596Q63eQo0yqWHjUHBq4Q689KDQ3fBr01KwfeKbSjNy1gK+ta8GWG44HN5mQldx3og==
X-Gm-Message-State: AOJu0Yw8b9+3dXGeh7+B0uE7Q1P1TZhPgxtUJNuKMFcYMXDxdBvRwFgP
	jkiAQcD+ada88aplT0NALDoTwOpD3lMNqz6aD/JNWdhNbuY2cgv4kYPCEUzBF8Y=
X-Google-Smtp-Source: AGHT+IGwA4HOL7uVlsvp1kjCWTb91JKo/1LeORoddbW/2pJ14HHZ+nf7vr5NAI3DrM03hiKmtjCCKw==
X-Received: by 2002:a05:6000:1754:b0:357:7070:4fa with SMTP id ffacd0b85a97d-35e0f25c388mr7906943f8f.13.1717519566298;
        Tue, 04 Jun 2024 09:46:06 -0700 (PDT)
Received: from [192.168.108.81] (freebox.vlq16.iliad.fr. [213.36.7.13])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-35dd04c090esm12634482f8f.6.2024.06.04.09.46.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 04 Jun 2024 09:46:06 -0700 (PDT)
Message-ID: <8b2705b7-f33c-4ebe-a6a8-c5ef776fe9ad@freebox.fr>
Date: Tue, 4 Jun 2024 18:41:04 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Marc Gonzalez <mgonzalez@freebox.fr>
Subject: [PATCH v5 0/3] Add support for qcom msm8998-venus (HW vdec / venc)
To: Mauro Carvalho Chehab <mchehab@kernel.org>
Cc: MSM <linux-arm-msm@vger.kernel.org>,
 linux-media <linux-media@vger.kernel.org>, DT <devicetree@vger.kernel.org>,
 Pierre-Hugues Husson <phhusson@freebox.fr>, Arnaud Vrac <avrac@freebox.fr>,
 Jeffrey Hugo <quic_jhugo@quicinc.com>, Bjorn Andersson
 <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>,
 Bryan O Donoghue <bryan.odonoghue@linaro.org>,
 Stanimir Varbanov <stanimir.k.varbanov@gmail.com>,
 Vikash Garodia <quic_vgarodia@quicinc.com>
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Changes in v5
- Collect latest Acks (from Vikash)
- Resend to Mauro

Marc Gonzalez (1):
  dt-bindings: media: add qcom,msm8998-venus

Pierre-Hugues Husson (2):
  arm64: dts: qcom: msm8998: add venus node
  media: venus: add msm8998 support

 Documentation/devicetree/bindings/media/qcom,msm8996-venus.yaml |  4 ++-
 arch/arm64/boot/dts/qcom/msm8998.dtsi                           | 48 +++++++++++++++++++++++++++++
 drivers/media/platform/qcom/venus/core.c                        | 39 +++++++++++++++++++++++
 3 files changed, 90 insertions(+), 1 deletion(-)

-- 
2.34.1

