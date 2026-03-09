Return-Path: <devicetree+bounces-272994-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id COrwNVTjrmmsJwIAu9opvQ
	(envelope-from <devicetree+bounces-272994-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 16:12:20 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F71123B6CA
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 16:12:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8696B3079BA2
	for <lists+devicetree@lfdr.de>; Mon,  9 Mar 2026 15:07:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 30A8A3D75DE;
	Mon,  9 Mar 2026 15:07:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="EW7GAu0g"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B64413D7D80
	for <devicetree@vger.kernel.org>; Mon,  9 Mar 2026 15:07:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.167.48
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773068826; cv=pass; b=VtODGOj0DSaD75N2IXHnngOUfqeyhpgzS4emfWsHWBQ6cGqpHqk3aNIoBURv3zL9keKrlxjIgBSRpqgVa4/ofxEqDr0bhX5JbgDqxKqetNuc6N6lr8cnY7NLmNtGSXbltk8BPltqH6JFCCT6jaFADAb8IVyljFP8iUDBrKw1/ws=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773068826; c=relaxed/simple;
	bh=qFM6CNejT4/x2PsTY7g3d31KNjCWnVMll1bNFh52yVs=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ksX5i7gctv404eX0SnNA2AgNOhLFGOEyb/KglCgAC5CaD9RtJ7jBwIeQENA0XRtC2UkrrhwFVL6GaFplwxaNDl2LtJqa3sp+/WMSzluMXTpf3y3hEeKSvRyeCzkAdR3ZIXKnOtxGx+PHTykWDkkBRlNHd2xScDRX8FS3GisAO0w=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=EW7GAu0g; arc=pass smtp.client-ip=209.85.167.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-5a133b686f7so4696041e87.0
        for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 08:07:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1773068823; cv=none;
        d=google.com; s=arc-20240605;
        b=H4qLis/bpt18udPdu0iS99B7BsdRTWR1kDCHpM8p/kIC4sJWP+WUttxQ3C5SQ5B114
         liJUr8I6y5I8Tiis1PzJfxeAOOaFTghVOSdnBh3YDGyt4Xz249xUsr9UHI7mI6l1cn1O
         1+LWfyGe5/QcVUvAqDTOWA0T9yWhMuPsCSuhZ8DbOzTjlyEhXl4Pav55W+UM8JCXoYeF
         6enTi+RSUGOpS0tFxWEMJEJrlbIsY5NsAVpCcYUkYRCOdTjKhCemQnl1Dt1SpHgyAlyY
         FJbrbvX2fr3tI2AOgrTUHUHoPtmvwuLhFCGo2hhzh3zxgSE+OXFK5DOyLw0fa+5KD80B
         z9Hg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=537JRIZC/LSxbuaPx2Afp8DiB6T1dTDgqpkX2JrxqlU=;
        fh=DoUpcBXvHl9US/LI7yed2FrEgSaRUYkRXocIC9CIVic=;
        b=HmM3mFwWWrvF48tjP4AYFxBnxtVuAj/hSqUOo4XU+FwfO+ot7e7fybAb3h3HUok9up
         ffc6kPwMWaHcSRr3PAkKAQ3z6hwJbKe5mjOGkfP22YSI7KNEspap6ss8NeW5GSU/NeVO
         9/FiLFfqVDrisC0koV4Tpa/li3CfrUDTpJi5dpg6rtKmVYEDmHHzOnn2eK6clFtsGxA/
         X6cYYXrBAKRklSH5ooZvp3xjG9lg9yVP5+gZrkxq2AmM9cUHE2Ma2v1mUW5Q4ccIuOnm
         5rYN9OWjPPKWy0NKs29kl8yGchdKewe3NHBkRLRk7BJx5lKt3t8Wf2Wau7uxzLZP1jaU
         53KA==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1773068823; x=1773673623; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=537JRIZC/LSxbuaPx2Afp8DiB6T1dTDgqpkX2JrxqlU=;
        b=EW7GAu0gb8gRnZtPCQzz4ZqYyjyhH3+SJs4WXmlIUz2cW3gEEDUuqcM6MqhYFa9Q7S
         tMpGvQKfb7JxKlB6YolG2pMXgh8QMFrvO2rGgvcEugBV8UNWkW77p8Eab79UZdDzJBAF
         NB3j5n5aaeh0X1sPfEvIgj/fbhbSWN1q1ehM5VT1KnUOpRvSbfOkQY+QK9p/bPdg3e9o
         tN86gJ1E2mK7wFEXBs9p7Sh1qs3To3+5E5slr8HJa1RqZ8AKxla7OXVsy9i+msGeJUbi
         HGe3V7ApvSTZ5SE4V/Pm63OXSZceRRb6RoGQov8724D1t5mPpBqO8GCdzjx8UXB7/H07
         Harw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773068823; x=1773673623;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=537JRIZC/LSxbuaPx2Afp8DiB6T1dTDgqpkX2JrxqlU=;
        b=X8r+S7e9qSxHnEPbnsKyxsejJeirhVXQ9No7+c30+oX80Puf7krFewj4MNUOVyXwTr
         i0cQn7G+bmdDTz/hxYYS/mKKk6OTaw3r3vQAUw46b4jRrSxdHy29SOQLOYOMt4BjvQf0
         ReXPPX3tiK3cTxcDFYj2oGRq/erWQZE+00cfxvB4k/q5FIB4aL0CMkuaa9DrBl80nNTB
         4cYhC0b8ysdMyvhy+AbxCAl6NH/G8RITnnEstdI4aBUdiENG5AGVkEMKGdJJ+kY8udZy
         zsmP3t/MlejmeQPxWnC/TA5uop7gNd7x+Jw6J497elSc7k3hMIbiA420IXp89fgtb+Qo
         xg5A==
X-Forwarded-Encrypted: i=1; AJvYcCVbcHB+0C4Jmr4Zf7z+T6/VN7m4ReylGEYzoQVaT5Ze4dr3pFnAph5LRl9n4kzsuMCxQHGSElL0utDT@vger.kernel.org
X-Gm-Message-State: AOJu0YzcLUc/GljQF6Dfxbs8Bd3mO+HvgSD4cB96jSA9kfEjRhIQxS2M
	mboMXihvtDrXJ88WO8z0KkbHQZqo9DFvcnFHVN1c7pSw2Na0sBS00IKjz82lfGbAEH9qfKEN1kp
	F3Y5U0xK4K9EaoFwbzkbrfy7iRQyduvWsZ/Dsn8jayFeXv0c2bo62N/I=
X-Gm-Gg: ATEYQzzHRD6CNLirO/j44MA3lr+BSJk60tFIn9VW7DQFX84ADQnG4+hUsyZgLwfGX71
	4UljiLqFvGH8//VXNGddC7Mik7X+88zHuXFI9izqml5JmKD2yNM0EILeQc+oWshr5ZwjH62WXLo
	UQOA6xzS/ElS7GSLOhhed1YYYmXvar+OqApOdu/+Lk6EA8HtApTPJnk4RrS7JEOHnoMMnOqijNK
	iSL2YojW/4RvG2SSIb4F3TGuEAkTCHNCnG/Hr6r5F4CK5ru8XEk/iRNghpMirAJM996EwrZqeH6
	zSYRhwSr
X-Received: by 2002:a05:6512:1050:b0:5a1:427d:93cb with SMTP id
 2adb3069b0e04-5a1427d98a9mr2810827e87.3.1773068822670; Mon, 09 Mar 2026
 08:07:02 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1772529875.git.zhoubinbin@loongson.cn>
In-Reply-To: <cover.1772529875.git.zhoubinbin@loongson.cn>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Mon, 9 Mar 2026 16:06:26 +0100
X-Gm-Features: AaiRm500LV8TdcWOE41CkNJVMFJZsV23MQAFkPUmS9M5shGF6D8S5Byz54gpLEA
Message-ID: <CAPDyKFqi_p0YDDebvjhAeC8fiq0KidE_pmbvBcvGDiUEStWvrA@mail.gmail.com>
Subject: Re: [PATCH 0/3] mmc: Add Loongson-2K0300 SD/SDIO/eMMC controller support
To: Binbin Zhou <zhoubinbin@loongson.cn>
Cc: Binbin Zhou <zhoubb.aaron@gmail.com>, Huacai Chen <chenhuacai@loongson.cn>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Huacai Chen <chenhuacai@kernel.org>, Xuerui Wang <kernel@xen0n.name>, loongarch@lists.linux.dev, 
	devicetree@vger.kernel.org, linux-mmc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Queue-Id: 3F71123B6CA
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[gmail.com,loongson.cn,kernel.org,xen0n.name,lists.linux.dev,vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-272994-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.990];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ulf.hansson@linaro.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[linaro.org:+];
	RCPT_COUNT_SEVEN(0.00)[11];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,linaro.org:dkim,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,loongson.cn:email]
X-Rspamd-Action: no action

On Tue, 3 Mar 2026 at 12:27, Binbin Zhou <zhoubinbin@loongson.cn> wrote:
>
> Hi all:
>
> The patchset describes two MMC controllers of the Loongson-2K0300 SoC,
> one providing an eMMC interface and the other exporting an SD/SDIO
> interface.
>
> Its hardware design is similar to that of the Loongson-2K2000, but it
> suffers from hardware defects such as missing CMD48 interrupts.
>
> Thanks.
> Binbin
>
> Binbin Zhou (3):
>   dt-bindings: mmc: loongson,ls2k0500-mmc: Add compatible for
>     Loongson-2K0300
>   mmc: loongson2: Gathering all SoCs private data together
>   mmc: loongson2: Add Loongson-2K0300 SD/SDIO/eMMC controller driver
>
>  .../bindings/mmc/loongson,ls2k0500-mmc.yaml   |  1 +
>  drivers/mmc/host/loongson2-mmc.c              | 59 ++++++++++++++-----
>  2 files changed, 44 insertions(+), 16 deletions(-)
>
>
> base-commit: 6a4a4c1cc0012590b8bebf6c95d51687d39b420c
> --
> 2.52.0
>

The series applied for next, thanks!

Kind regards
Uffe

