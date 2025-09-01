Return-Path: <devicetree+bounces-211293-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E75D9B3E4B3
	for <lists+devicetree@lfdr.de>; Mon,  1 Sep 2025 15:23:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0018C16B405
	for <lists+devicetree@lfdr.de>; Mon,  1 Sep 2025 13:23:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3A4432773FB;
	Mon,  1 Sep 2025 13:23:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="JF18vQ3W"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A683C142E83
	for <devicetree@vger.kernel.org>; Mon,  1 Sep 2025 13:23:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756732997; cv=none; b=MYTXdKjCxWvDRxFf4RS4DHHgX097q2bVdJttFNy4yi1ZmNQqrfxUlbxT5SpMhBs544LszgsyqSn8ES+xgOnDcbBDa575HALfWhx5u233wHg+lJH7vk5X0qeteh6IYynAWqsx0iV66XIP/zbYKnD9eqj+RISzcs0c5NCbbG98XrQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756732997; c=relaxed/simple;
	bh=pPRviCeIe/MNw3hM3xOHiKjB0T4T7gISDfSenvPnK6A=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=DOVzbTO7yMVnrQmm/psz46hG3MBvE5eYeJ7hDexvBd8v74LZGxWXoiJF+XclYVnRWKNFoH2u93mr6Eu+HHu0m3xfF1u3aCeO/iYVJcSL1dc7o7HgMFnib7MVQOHoRR3H1HDDlFum+xvfhqRapg4Pe3tKGoMwE/e4QCARQS38ktQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=JF18vQ3W; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1756732994;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=Cxq7T2V7lpPnrYC2+PR+qicjY5gpUXVxT7pGCrLEVTk=;
	b=JF18vQ3W7uOpL1tFH3uwHV5tDJv5BJwtWfdhbi3rFOhlzW9tMnSKqXEASGKtWSUcmrAH8Q
	PR1jit980vz7WhYx4JnYM6SPelllEwLwinW3KlOXPWAvcDkWV08pRIaFGaenkGGW1sigte
	gJqb1WyofHaBV1nPdnvg9gA7G+Ln40w=
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-651-GT9xJsunOmWPb1vQlKqKAA-1; Mon, 01 Sep 2025 09:23:11 -0400
X-MC-Unique: GT9xJsunOmWPb1vQlKqKAA-1
X-Mimecast-MFC-AGG-ID: GT9xJsunOmWPb1vQlKqKAA_1756732990
Received: by mail-wm1-f72.google.com with SMTP id 5b1f17b1804b1-45b8a307c12so6325335e9.2
        for <devicetree@vger.kernel.org>; Mon, 01 Sep 2025 06:23:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756732990; x=1757337790;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Cxq7T2V7lpPnrYC2+PR+qicjY5gpUXVxT7pGCrLEVTk=;
        b=o1EwtcZmIYHDJNmFLwrvMR2mPd5wpDrfXumdF8+gZo3bWFi5T69i7PTb6HeRmdClEN
         rq0XHmbRAzl0HnLBGWXjUrvz504JhozCB170y/LjxdoTl/63beATxV3SlirdyyCGfMk7
         YqKpWNtcIZ7y+RsBgCMG5Cwm1sERqGHaGaYP8eshWgPLl6duW81HreW43315ZXnIjaS8
         JSbIYTDxjt03Y+zuMHPCrJPAt3slg8bYlAMrWcOJ6T8Akgypd+D6UZplyruLZOZJ7M23
         zo9NMmRhgMhwTebbPjHU3cKNWSSaAdegRjX9Nm+adMg4E61ihDdSA9F4xsyic+gTi6AQ
         5MYQ==
X-Forwarded-Encrypted: i=1; AJvYcCXh1jUdEv6V7uef8G4YJSaohePPTJRwuFhwQVtmoUrxsAS266+i+AQ7RDVXlgAOankOWo8Qo2S/uaRH@vger.kernel.org
X-Gm-Message-State: AOJu0YzPTBdEGoIpQX3CZ7QtiEQLSzhbeFZwO67lDq+S/FNzjrUUGLTP
	sXYPdGuSkLNQvXHanK8iDQi1beCqZi+9uWrPmqidkSTWEKxuGnzr1oU4eRAjW+goaEhkyt6RQTW
	HgBqpp5gSDME5ioLn++p/WtUYjvK2Rv9+2NNMg4+B7qBl0iEiPSdii7OQ9gz58Zg=
X-Gm-Gg: ASbGncsruboScd3QGx6ntuDuarPwqt/QyZZU/bQ9xVvBZ8ZhdHqGbHL+e4wfYKehNaz
	HWrkwOSnLFf9Q9lh1l8pvQSdrFV+SPdRp3wMRbcnJXLORRbDW5P7a6JjYT9qT1yUNuYXkIwn89t
	vBPTxJA4N5Ig7W7NVBq686+DIgXkCBJPyOgGRdd5ocGcZJabfvrl2v5iEU/wwZJ7Y0rIAv7ZRjX
	gYHRg96rgkqnT5vTyQOp2udi2vcwDiEJXLsr3MXTsFZqGjAzFYDzMvtwgPLkCxhZDhT5/Bmz6YI
	tFia+cwx3a1Hl/UuOi/pCtfE2/Wt8DFIbTwIk2FmEL8sHAreQXIHE4foABHEvL+Vsw==
X-Received: by 2002:a05:600c:8b42:b0:45b:7e86:7378 with SMTP id 5b1f17b1804b1-45b8558be6emr57927745e9.34.1756732990187;
        Mon, 01 Sep 2025 06:23:10 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFn+xR292CYaY9FGMba3rZUFGRMyeIqFOQQHajodDM19zB/eMHw015CBudwcpdCSUn47hWdZg==
X-Received: by 2002:a05:600c:8b42:b0:45b:7e86:7378 with SMTP id 5b1f17b1804b1-45b8558be6emr57927525e9.34.1756732989773;
        Mon, 01 Sep 2025 06:23:09 -0700 (PDT)
Received: from localhost ([89.128.88.54])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45b74950639sm209197995e9.17.2025.09.01.06.23.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Sep 2025 06:23:09 -0700 (PDT)
From: Javier Martinez Canillas <javierm@redhat.com>
To: Thomas Zimmermann <tzimmermann@suse.de>, Marcus Folkesson
 <marcus.folkesson@gmail.com>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard
 <mripard@kernel.org>, David Airlie <airlied@gmail.com>, Simona Vetter
 <simona@ffwll.ch>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski
 <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org
Subject: Re: [PATCH v2 5/6] drm/format-helper: introduce
 drm_fb_xrgb8888_to_gray2()
In-Reply-To: <2b0eee63-2b7d-4ca5-b673-4f3761d2e386@suse.de>
References: <20250721-st7571-format-v2-0-159f4134098c@gmail.com>
 <20250721-st7571-format-v2-5-159f4134098c@gmail.com>
 <87y0sh947w.fsf@minerva.mail-host-address-is-not-set>
 <aJnc36ojqSb3-Ti2@gmail.com>
 <2b0eee63-2b7d-4ca5-b673-4f3761d2e386@suse.de>
Date: Mon, 01 Sep 2025 15:23:07 +0200
Message-ID: <87v7m2fgsk.fsf@minerva.mail-host-address-is-not-set>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain

Thomas Zimmermann <tzimmermann@suse.de> writes:

Hello Thomas,

> Hi
>
> Am 11.08.25 um 14:06 schrieb Marcus Folkesson:
>> On Mon, Jul 21, 2025 at 01:24:19PM +0200, Javier Martinez Canillas wrote:
>>> Marcus Folkesson <marcus.folkesson@gmail.com> writes:
>>>
>>>> Convert XRGB8888 to 2bit grayscale.
>>>>
>>>> It uses drm_fb_xrgb8888_to_gray8() to convert the pixels to gray8 as an
>>>> intermediate step before converting to gray2.
>>>>
>>>> Signed-off-by: Marcus Folkesson <marcus.folkesson@gmail.com>
>>>> ---
>>> I would like Thomas to review it too, but for me the change looks good.
>> A friendly ping to Thomas.
>
> Apologies for the late review.
>
> Acked-by: Thomas Zimmermann <tzimmermann@suse.de>
>

No worries and thanks a lot for your review.

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat


