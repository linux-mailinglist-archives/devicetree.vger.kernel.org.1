Return-Path: <devicetree+bounces-251821-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E61A4CF768A
	for <lists+devicetree@lfdr.de>; Tue, 06 Jan 2026 10:08:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id CA345301F7BB
	for <lists+devicetree@lfdr.de>; Tue,  6 Jan 2026 09:08:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 09AEC3128CA;
	Tue,  6 Jan 2026 09:08:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=googlemail.com header.i=@googlemail.com header.b="GEs9wUoA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com [209.85.214.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E66230DD07
	for <devicetree@vger.kernel.org>; Tue,  6 Jan 2026 09:07:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767690481; cv=none; b=ltl8RZgvd8xlilbHtJtWayJ566BFSRaYn43h2hGgR0dzXkZaqYOUtZm5DLkTEMGk8dyX+OzwLtEIzoOUhoY1DH1qUqqnrUOlj+lsPUG0aw/veBn20L8+kpNqJfPqiwO5oM5s18FYIKdI+BBlB3cTUyF3iIwmdHOECbGyKlOC0iA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767690481; c=relaxed/simple;
	bh=ng1O6r3g3fw5/a6Cbf+5U6aFI9SGtJM1t6RTyf6QqZ0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=cppvnaKAWmz3nza/jtmEbK+XIjB88b5XHBkzq/mVUldX2pNJ/Dj0xTs4/ZdLvY367Bzp0OvFEN8cNt8hKxhMs8y5JhyN5yDbmoPDedfZ1SXoaDQK3IrpVR9+pxoEM1D/vAWymeIAICz5EGulv30XQBLoZeELA+EuznfcKZ1WrpM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=googlemail.com; spf=pass smtp.mailfrom=googlemail.com; dkim=pass (2048-bit key) header.d=googlemail.com header.i=@googlemail.com header.b=GEs9wUoA; arc=none smtp.client-ip=209.85.214.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=googlemail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=googlemail.com
Received: by mail-pl1-f180.google.com with SMTP id d9443c01a7336-2a3e89aa5d0so700685ad.1
        for <devicetree@vger.kernel.org>; Tue, 06 Jan 2026 01:07:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20230601; t=1767690479; x=1768295279; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ng1O6r3g3fw5/a6Cbf+5U6aFI9SGtJM1t6RTyf6QqZ0=;
        b=GEs9wUoAzURpESdzpFZqmrFNCwaMf+nRJQUaSXCoMLZHI8TMRew3MJcjrGnHNCiDb0
         /oKtZlMSVHav9WP8P7cQPNCBxp26W+WLbfiezNQUzDvH3viDaNBamLVRMLNa4TAAe0Vn
         mWUrcU5+ejvEIKKYcQQ32svRENdkmIkRWcIhTXdZkNoX+jA6pSFxTDQ89gKNhYtC/hNj
         10pAQjWtHxVfbyTpV3JdenkvQhA4em5o6m8rXl3bP11RP1usvWQWv8fCMXVwcLI3NuGA
         8eass7TAMh5i+Hffv8X5U4ritfCs3rqKSvcKN4GOPjmsj0tNAbLUeH7F87tuxDB3rM+e
         KT5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767690479; x=1768295279;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=ng1O6r3g3fw5/a6Cbf+5U6aFI9SGtJM1t6RTyf6QqZ0=;
        b=BAigerDttLTDwbfkci58BucXI7c4kVw/BYTxlMpvdeK6um8iRLx1juSiWBIK3Rb6wF
         0lzivlJGymRqOXdIXKsppGtMq/RXqAf3eF9JPCINPQuYCs4z8eFtncPbQuHTzkzYHfXi
         U+wSF/NvRWlby4g+EcGlAOsl5Iinim9GkhNOl/pcZ1OMSYnq7XWcsCYPeipKIIWSC/QS
         RM8fn8Wf9gY1KkOw3NkdvU8JjpPzhvB9aBDMG8q4uCLNdswQhkQVGapgyxmJXW8AVVql
         GU7rPnGaDdy1NGIu4FxvI2fkc2CvEwExcPbQj8wLyV5d3IwxcEjTDsQ57aBKJnzh70RZ
         4kZw==
X-Forwarded-Encrypted: i=1; AJvYcCXb2kTr9ZXG2USxDYLSybPnuQglvYNlM5J7ZPAQVDESvaHwI2916LlkfzUz6Dm89qfQvxsYxsz/hiiU@vger.kernel.org
X-Gm-Message-State: AOJu0Yyw4gJB4MdpSWlJgC8Z7mS25JnuZA7CdeZcsZMojnt/ox+OozNv
	5PxIzz33/ARcXhL+HOpfbbdX0iEo8GkxzIDF3IGCyT3F/Oy7gUYcnSq1eg0w1W/4XPsemWK2Z5Q
	4vM/lx3bEsl2Y+Kku6ZkjqDRkZxi/QSQ=
X-Gm-Gg: AY/fxX4ER45OJJBzJL1hKxqIgvNgQDl2BcyY47SrbpAUeq68/iWWVbDbS+iqfZoA0sQ
	FPcaea4owCCrmJFxPO5gnyhT6XTYiRhHWA/pE1ayEpLIPA2bsfLCKKCv2xrLGhzU90cHgrHHcaS
	zjKBw4BU35q6s65WKS8wy8hWQSoe2cbnImPD7L978PZDFfp/0tTx0xpWockc0R3qGtLZr35jHlg
	7BdYSSc5uxTWhNqcIVv+bWvlo2Da73l1jX5RfsI+ZJdF77fqWTVRdQXxKotO4qok7b+CqPQ7ebq
	rUOsZZz6cLFWHqOhR/R7e2GHqDE=
X-Google-Smtp-Source: AGHT+IGvgGC1dgkt7wuMnmSCuPWWqlGjRV0GwcsdQ/Sq5EQ7QxT7kYX/RKSYc+hqxzm3Sblq3B8Wpb0Bsh7gDiAoQ0w=
X-Received: by 2002:a17:903:b10:b0:2a0:8966:7c9a with SMTP id
 d9443c01a7336-2a3e2df5419mr19705135ad.58.1767690479185; Tue, 06 Jan 2026
 01:07:59 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251108211503.1578711-1-martin.blumenstingl@googlemail.com>
In-Reply-To: <20251108211503.1578711-1-martin.blumenstingl@googlemail.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Tue, 6 Jan 2026 10:07:48 +0100
X-Gm-Features: AQt7F2q3nwKPMxa1oOETiD35RsxTmLu3g29Iap0HmNIWj-OuXkkF_dQhuThhVVg
Message-ID: <CAFBinCDQojLyznKTxn+fGgq21Wd+eFFjTPc=a8Dw+xMnwy1S2A@mail.gmail.com>
Subject: Re: [PATCH v1] ARM: dts: meson: drop iio-hwmon in favour of generic-adc-thermal
To: linux-amlogic@lists.infradead.org, neil.armstrong@linaro.org
Cc: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Neil,

On Sat, Nov 8, 2025 at 10:15=E2=80=AFPM Martin Blumenstingl
<martin.blumenstingl@googlemail.com> wrote:
>
> Commit 85b21fdec906e ("thermal/drivers/generic-adc: Register thermal
> zones as hwmon sensors") made "generic-adc-thermal" also register hwmon
> attributes. That means we now have the temperature sensor shown twice:
> - once from iio-hwmon
> - and another time from generic-adc-thermal
>
> We need the latter for SoC temperature control, so simply drop the
> former so userspace doesn't see duplicate sensors. Also
> generic-adc-thermal provides a better name to userspace
> ("soc_thermal-virtual-0") than iio_hwmon.
>
> Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
gentle ping on this

