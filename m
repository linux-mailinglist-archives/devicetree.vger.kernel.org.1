Return-Path: <devicetree+bounces-220049-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8823EB91953
	for <lists+devicetree@lfdr.de>; Mon, 22 Sep 2025 16:08:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C8D562A155B
	for <lists+devicetree@lfdr.de>; Mon, 22 Sep 2025 14:08:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 80EB81C1ADB;
	Mon, 22 Sep 2025 14:07:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="13oRaIfE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8BB611A238C
	for <devicetree@vger.kernel.org>; Mon, 22 Sep 2025 14:07:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758550071; cv=none; b=qjq+uiidnEtZamKYf50n6dHHjZMykw7kidlXGBYbQjaGJy694ILun0GX00K2ktTH3rNXrkuNFerb6ItRvjoujs2qh7JciEa1/ykikfoNAkSyp22SMGMSn7Jd/QsbpTQAmfk5WvM+KaX4ZJsDyYCo4yVwAZ/VrSsnRRAjhAg24aQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758550071; c=relaxed/simple;
	bh=2gKCZnS8Y0kw7LI52aPWPye+cd/qPIjBzxQKuWEn6pk=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:Subject:From:To:
	 References:In-Reply-To; b=iR7H7otcyGRjv6qJv6HpjIvAheWoXBIEysz/YBkzQUgGNacZecsjX10U1WjLVFhfJt6aFu3DTihscLFXTCUZpg4PtnwTFNSW/NWewbs1N7yhkGCaJ6WzUtB73g0edNnpEEma61gtTlDb4zeZQP2LpRZUhEPxxQJXsSER9lciQiE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=13oRaIfE; arc=none smtp.client-ip=209.85.218.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-afcb78ead12so672075466b.1
        for <devicetree@vger.kernel.org>; Mon, 22 Sep 2025 07:07:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1758550068; x=1759154868; darn=vger.kernel.org;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2gKCZnS8Y0kw7LI52aPWPye+cd/qPIjBzxQKuWEn6pk=;
        b=13oRaIfEW+73jLfqkyekNErZbMJqXdnSYacGoyP2XAv6ZfSQf1RXPcha8atJOZl8As
         46vhi5spf6uugfF2HRkrCGnngBkhpSKwqsOkk5OYk85LfSrz7LbfLsPwhVRYToYTXkqz
         +1ZLJuSe2KBcwjuxVw6YY4LVO98aDuiisfokbLUcSNYz8kMw5HJx39snWC62fR7VVmIP
         7zM85Qj96lClyr/B8O5QVaul7SKe33eNJP5xRF1zUmd3u4ylwb/kRSmRTW86aOz2gvbF
         kXslc/8QQmixEmS3PCXkkdI8irlBHJ+OMliP64r1Viic8ND2F7FfAIGtHgJIMlOJM+3/
         URdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758550068; x=1759154868;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=2gKCZnS8Y0kw7LI52aPWPye+cd/qPIjBzxQKuWEn6pk=;
        b=YFUMb0sNq/TEfgkTtCviRnjlPDvz7w/yycXH2uuXamucuAaatmklVOnhr7jlZjWBEs
         3kMCv9SPA5nY6VIXi1PW8VMvWKkwNcdBHPNorrpan68KIQZCKO1+ZxQgDd8xRjw9B82V
         +1XobHAA+/SuKq4Ei3y/ZTFiZLK9TdFiVyDVw/FFjfrlaqHxtkhBZarE3pxmAHJO5qXe
         Vy2t1nPQKE747tIO75VV3CkHFh8SWus1Wfeth6q9efqmYkW2LATk37zHhbvmkSDkK+1O
         r9s0xi23PvznM6mtbRjIw23l8WpgzseFL0BcGx496dQX+aNVCJFTUl5T+o7VLmAQHNfF
         a5wQ==
X-Forwarded-Encrypted: i=1; AJvYcCX7nGSgsmPUAKfK5A7jk2Zly0OlJyhim7wtaEghtuFSdocqVlQPgcOS9k7eIev+eCfPhDlS2QTy7ndv@vger.kernel.org
X-Gm-Message-State: AOJu0Yzbp7QkLjmev+tqm/jVzDtoMzexxcBaS+vAVuUbg5LiZaGSjmp6
	txwL0flmYD+8jV7WivQgW8ce/K/qgII3f7qhpnoKQsm62LzHJQo0F0Yz1Kv83LTOkgQ=
X-Gm-Gg: ASbGncvg9wUasMTAyKfGYZrBq/pj6wL3KGjLSkO18IFAIhGtQp21i6SY+ZLx6sm9gvG
	CapwaZhxsR8aLzhqIyRD8Aw4IvfpBy6Nz6+eLeCQ8VokU5HgaaHkgiySafGM1DrcuVBkiezfN1m
	bwXq/96zTSOGVcFU4uLKXYfoBMfuqq5KW0aRce2bdSe0v8+pIRBQQ9oo4uqvu8IeubsCZLD9Qri
	XuumpwLoBiAGE4ZZcOAL3WdYMytMya75vtm+8gcwIOo+27lrUJkK/kS4XKH+TgxLJdzHcsXUW8R
	qkxWWQj/7836F5fQ3bh51toDveHuBYdh6N99jHWE+lhxE1frTNOtzW8QCXVU3C1SuY0Nv02UPVW
	zAz/ddF3Pcv7AQVGPtSPSRgJvnG9XNEAGeeW9c//3GJ1PBSNWuURgDZa1TPsXXDwd2dg3
X-Google-Smtp-Source: AGHT+IG2LQi+1Jve61dJzJPf3p6C4wK2oRc2C6Ic3zD7ZHI0AKL2Y3hhz823ekZ6+r+8VVvfemU3qw==
X-Received: by 2002:a17:907:972a:b0:b04:4046:db6b with SMTP id a640c23a62f3a-b24f567c816mr1300784166b.45.1758550067866;
        Mon, 22 Sep 2025 07:07:47 -0700 (PDT)
Received: from localhost (144-178-202-139.static.ef-service.nl. [144.178.202.139])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b29b80eaec6sm484442766b.87.2025.09.22.07.07.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Sep 2025 07:07:47 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Mon, 22 Sep 2025 16:07:47 +0200
Message-Id: <DCZDZ037P56C.3MS3HI55IN41J@fairphone.com>
Cc: <linux-fbdev@vger.kernel.org>, <dri-devel@lists.freedesktop.org>,
 <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v2 4/5] fbdev/simplefb: Sort headers correctly
From: "Luca Weiss" <luca.weiss@fairphone.com>
To: "Javier Martinez Canillas" <javierm@redhat.com>, "Luca Weiss"
 <luca.weiss@fairphone.com>, "Hans de Goede" <hdegoede@redhat.com>, "Maarten
 Lankhorst" <maarten.lankhorst@linux.intel.com>, "Maxime Ripard"
 <mripard@kernel.org>, "Thomas Zimmermann" <tzimmermann@suse.de>, "David
 Airlie" <airlied@gmail.com>, "Simona Vetter" <simona@ffwll.ch>, "Rob
 Herring" <robh@kernel.org>, "Krzysztof Kozlowski" <krzk+dt@kernel.org>,
 "Conor Dooley" <conor+dt@kernel.org>, "Helge Deller" <deller@gmx.de>
X-Mailer: aerc 0.21.0-0-g5549850facc2
References: <20250623-simple-drm-fb-icc-v2-0-f69b86cd3d7d@fairphone.com>
 <20250623-simple-drm-fb-icc-v2-4-f69b86cd3d7d@fairphone.com>
 <87o6u9d3kg.fsf@minerva.mail-host-address-is-not-set>
In-Reply-To: <87o6u9d3kg.fsf@minerva.mail-host-address-is-not-set>

Hi all,

On Fri Jun 27, 2025 at 9:52 AM CEST, Javier Martinez Canillas wrote:
> Luca Weiss <luca.weiss@fairphone.com> writes:
>
>> Make sure the headers are sorted alphabetically to ensure consistent
>> code.
>>
>> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
>> ---
>
> Reviewed-by: Javier Martinez Canillas <javierm@redhat.com>

While there's still some open questions surrounding dt-bindings and how
exactly to do that, I think it would be good to pick up the two
"Sort headers correctly" patches so that they already get in. They're
good to have in any case in my opinion.

Regards
Luca

