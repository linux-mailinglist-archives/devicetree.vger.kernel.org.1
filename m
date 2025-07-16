Return-Path: <devicetree+bounces-196739-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 89686B06EB2
	for <lists+devicetree@lfdr.de>; Wed, 16 Jul 2025 09:16:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id BEDA87B1C99
	for <lists+devicetree@lfdr.de>; Wed, 16 Jul 2025 07:14:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 36CA528B3E2;
	Wed, 16 Jul 2025 07:15:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="hBxU0FI6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D1C8256C6D
	for <devicetree@vger.kernel.org>; Wed, 16 Jul 2025 07:15:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752650150; cv=none; b=mJiZtEAPhEwitJqSlDELGGGccAWN4ur3Rm0LmJOMV/HSEGx1G1iioqO2R1p7PyGAZuIUvJtzsmNBh2ejoGJxvBeXv/0+Z+N5fuqbQb3JmgokhTPDZuvlehRfWJ6IQArJERBPOD4FIquHT4rlSvh3sWUTajf2AWKzNWffskek0MY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752650150; c=relaxed/simple;
	bh=24Tb/LcZcpuEpFKIVKeMZB7NBtNKQTvEKsUhXdnCMXk=;
	h=Mime-Version:Content-Type:Date:Message-Id:From:To:Cc:Subject:
	 References:In-Reply-To; b=M9wJyHJds/2yGijgwwEGMdGd8yYlNdL5szR4LYiZPDKeQvqX9YQZx2Iknpu1efles2HndY8AV9IXcNZYu0ePPkL2OkP8pJvek6NueL1d+iCjU4WlaSyIAijaaidPGKlgOEdbBzJgt9ucdpe9roWPmfWmPp7+zrb9FkqyVsIhkYk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=hBxU0FI6; arc=none smtp.client-ip=209.85.208.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ed1-f45.google.com with SMTP id 4fb4d7f45d1cf-60c4f796446so9267470a12.1
        for <devicetree@vger.kernel.org>; Wed, 16 Jul 2025 00:15:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1752650146; x=1753254946; darn=vger.kernel.org;
        h=in-reply-to:references:subject:cc:to:from:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YfsjryOJJcheH9NBkSyCY8ER+5hEKLpu3+/ZdvPKIxw=;
        b=hBxU0FI6N4QyvB9ewq8YRKB58MORaqNgkMrhXYVmffHaIufzTUqBkT5pO9I8Vk7sVE
         72DJEvKxWuMuruygEKXhPttCZprFXvvhq/onoRMHK+fYnYSdR6nPotsCmeUcjpu33+bd
         SW28QC5rr8OhHWCFj3WjkAJEGVQuEzcaVWEhBawOZVZlR+TlMUybSl/eA9k/dkb7sQRp
         vyD6PszlSyymICoMdafqoXUgi8embFU2wiMtp/1pOQPcBf2u9Tk23JVIss5JvzxQV6mt
         KJUfr4UHgNhJfILhy5Y8HbMlMt+GiPBTPhOc2IfkdHjiCHrZcmqSCCKB6RzVlswHxfOU
         Elyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752650146; x=1753254946;
        h=in-reply-to:references:subject:cc:to:from:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=YfsjryOJJcheH9NBkSyCY8ER+5hEKLpu3+/ZdvPKIxw=;
        b=k4osGSD45MgDYPGXQQNrhjX3FU8bPb64PzbI7bJ8R8/9O9lhuRr6COkJInrf2d8s2L
         HYB02CN7hdYAHE56wOod6NhhtdjzlCdn4Hu8W/6LSKeQbWo1jh5e0ypTnZu5nqKsroJR
         FgYX5iA2npJnRapX4veLR4Kk+l/jBjjra1W3fE0k9qe9X5/OYmzXsP2Cda/P8feaOllB
         DPH1A6Kh+eqMnevmsBBY5BRaH4GBbii6Dn1VVXVlghmOpv89VD3L3f+VtWD/hG1/vkgy
         tOzLLT/EWTQrX6tAyMryr9Es3cnPhfd4L+M2tZ8PL80DqXuhD9BlrXBpX2tExHM3lM7J
         D4pg==
X-Forwarded-Encrypted: i=1; AJvYcCWtBb0mFO1WaHco/alDXmasYp7vhlDrc8VMxZRq2NfREui/KcUaeNv3uhA4ADpDSeMB9cxm8WghFkjs@vger.kernel.org
X-Gm-Message-State: AOJu0YwcxAuLUZ/tvyZWp9q0RCcK8sXA4qYBgFmjgzjuE7dks+d4wCPl
	/M4HNJAS6rGtbmqsu255SNsbjvS1smqB4z82ThL5PnGxe4wnh30TmsZLJMdTVxeOpEXDHGZ1nPz
	z+8VbGJ8=
X-Gm-Gg: ASbGncvyzjH9ZNTxMJ2ssFCIULipyWFYfwFXKaWsVN4PB9bL1DzgohZjnb2gXud3Scy
	MupSC8vIB3iQydVmkmrNT5kgqNcggIQeNMTODzc9oItWlfA0sU7fVmEByJ5rz/fBgkMtItu0odT
	BkBNJBQ65sRITiiFrDCLsKA14qyK7Kz/qjYZ46fdg6OhtggUPDhrCxUxPue5TLXQxr38Buqi2Co
	Ewd94KmHcp3AzPu8IscQpgrRQAl3PDDPtG1ZAU+YE/RaGHHcDZU/bRmsaPCqu0tDtcgWoooFPW3
	YU/hmbp/tTmdkYfJ76y6b0UVBE9mX2MBFW124eTkn7GpWM2IUeZfP3rFy/5ooUyHMJNtMHECVuv
	uBI43Xk3KdtgnYdpnFO8Li7UjOIAhjqGthajuvEjdjSoVsj9QbEzEOWk=
X-Google-Smtp-Source: AGHT+IHh6O0xWZNdSmDIs+XRRgBqO1v1bLel1oaIRd2A4zdKO7Ksr9kC4ZbOvvs8AVHwGMBGLMFLbg==
X-Received: by 2002:a05:6402:2343:b0:606:9211:e293 with SMTP id 4fb4d7f45d1cf-61281ebe084mr1668193a12.9.1752650145562;
        Wed, 16 Jul 2025 00:15:45 -0700 (PDT)
Received: from localhost (212095005088.public.telering.at. [212.95.5.88])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-611c976ec04sm8197036a12.60.2025.07.16.00.15.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 16 Jul 2025 00:15:45 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Wed, 16 Jul 2025 09:15:43 +0200
Message-Id: <DBDAMGN9UQA0.J6KJJ48PLJ2L@fairphone.com>
From: "Luca Weiss" <luca.weiss@fairphone.com>
To: "Luca Weiss" <luca.weiss@fairphone.com>, "Bjorn Andersson"
 <andersson@kernel.org>, "Konrad Dybcio" <konradybcio@kernel.org>, "Rob
 Herring" <robh@kernel.org>, "Krzysztof Kozlowski" <krzk+dt@kernel.org>,
 "Conor Dooley" <conor+dt@kernel.org>
Cc: <~postmarketos/upstreaming@lists.sr.ht>, <phone-devel@vger.kernel.org>,
 "Krzysztof Kozlowski" <krzk@kernel.org>, <linux-arm-msm@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <stable@vger.kernel.org>
Subject: Re: [PATCH 0/3] Fixes/improvements for SM6350 UFS
X-Mailer: aerc 0.20.1-0-g2ecb8770224a-dirty
References: <20250314-sm6350-ufs-things-v1-0-3600362cc52c@fairphone.com>
In-Reply-To: <20250314-sm6350-ufs-things-v1-0-3600362cc52c@fairphone.com>

Hi Bjorn,

On Fri Mar 14, 2025 at 10:17 AM CET, Luca Weiss wrote:
> Fix the order of the freq-table-hz property, then convert to OPP tables
> and add interconnect support for UFS for the SM6350 SoC.
>
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---
> Luca Weiss (3):
>       arm64: dts: qcom: sm6350: Fix wrong order of freq-table-hz for UFS
>       arm64: dts: qcom: sm6350: Add OPP table support to UFSHC
>       arm64: dts: qcom: sm6350: Add interconnect support to UFS

Could you please pick up this series? Konrad already gave his R-b a
while ago.

Regards
Luca

>
>  arch/arm64/boot/dts/qcom/sm6350.dtsi | 49 ++++++++++++++++++++++++++++--=
------
>  1 file changed, 39 insertions(+), 10 deletions(-)
> ---
> base-commit: eea255893718268e1ab852fb52f70c613d109b99
> change-id: 20250314-sm6350-ufs-things-53c5de9fec5e
>
> Best regards,


