Return-Path: <devicetree+bounces-211866-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 197EAB41017
	for <lists+devicetree@lfdr.de>; Wed,  3 Sep 2025 00:38:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id BC8C17B2B50
	for <lists+devicetree@lfdr.de>; Tue,  2 Sep 2025 22:36:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 330A227144A;
	Tue,  2 Sep 2025 22:38:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="2yUjVFNm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6ABEB1E9B0D
	for <devicetree@vger.kernel.org>; Tue,  2 Sep 2025 22:38:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756852682; cv=none; b=Or54Iz2N8f6r44lctayGJUSeiZ4pHBEZXoFw1bf9J0vQsYBFwASuXGT8WYFooPCKCizBEjWKaIb8aMpdPygw27Pg4vAQiV+UTzfYJO4xgTSAg+3jirOfV1XGISVIf0GGsclIN4BO6I86x/5OAjVDR6iaiXIvno1yphF4wwgUV4k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756852682; c=relaxed/simple;
	bh=C2Z2q0BkPqIY+E04bVXl2gU0zLZQjMNqg1qcdhYoTFM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=m0LrC+IG45+E9Zw8KvjA85byW6EkTSURL9pSuiTnGUIx0d/+ZJGmGWjpPysqRAvopEiB5LqXU9JNWHEFiPkAMoAPbPxMsisfILWfOGXNG7G1QbPyNVNDd7tgjjWh33grT5P6kZ/NRC6uU4LuJCSHmfpQzDJCK4a0ilbBKCNd3Ug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=2yUjVFNm; arc=none smtp.client-ip=209.85.167.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-55f691c9febso4906921e87.0
        for <devicetree@vger.kernel.org>; Tue, 02 Sep 2025 15:38:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1756852678; x=1757457478; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=C2Z2q0BkPqIY+E04bVXl2gU0zLZQjMNqg1qcdhYoTFM=;
        b=2yUjVFNmc7wtcBLOIchJ+6+p8fPgyJwAGmSwsmhuvw5YAHZSWtrrXh7aMCZu7Xujuh
         vo0LlYoLMB44InIKUG52uQ/NSotxj7WBW91lIOx1fj+aAzznlvOJrYVh+Mde/CDOlRPS
         kPCpLxDPUiI0tQoiqFb3wEkSYHTpzQcNsbjeKSqHNa0SEX6V8xlg+4pcOi72odne3RnB
         1bXtVH0rR+K+u+48foCbGIFnikqkHkYcXOt9IQQ/dA/0f+n3SN+T6CshjzQzeGKa7MvN
         QF6rguYpHbZn+ppHqS4AFBReUlA153jz3fa8nu81E2WtYGVP+T4oi6Wj18TKszEbdnAn
         9Ekw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756852678; x=1757457478;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=C2Z2q0BkPqIY+E04bVXl2gU0zLZQjMNqg1qcdhYoTFM=;
        b=DPY8MXK/wuXVaLEMcU9sKngz9S2KXKlBx8Bt1sRptdhVJs//kR9yoyb7heE/CdgwXN
         FZ/waY6z9BwtG/Gw1TYVo16Hz4TrVHgaXMPZlXLFCW+iHJ7hn9ArH3au4qfuB0yjzzb/
         trWX6PrBwYXkH0cYBV8NZZt0tqtcfHE3XiT9V22K0bk5XVDgPby+/w94Cv5qwXVNPkPD
         TBZqMEWl6QqOdFxGzawjVI/Y09BEQhTZSoss3ej/wazg5GbVwlbml5992b6pW5Y4Xf3k
         JoyUNl2mAMXF6b/i+xCNZxwGFscUSPZEY/Q6v4+ptFN1MUEAGC4lc7mVr6sCD3LhFHmD
         6LCw==
X-Forwarded-Encrypted: i=1; AJvYcCUvvpvXtPRhah0JyFj42zXexQxuowxNoiYaBZF3sS8UPnluvSrcG1Ca17FOGHwKSkZsZkj5gYJtVJOc@vger.kernel.org
X-Gm-Message-State: AOJu0YypiicB9wEixpeaCEEQlM11IAI4SG/ERI9thyWv6ZvdS26A7XSn
	C41tJNgzGPn6uOj2WXn2ihpYUK5Mi6KThcXTMCSqJDuTjAspvB94OoNamWO/9zLoMV0nNthWvcu
	XA9tJsXjlq+1gIU1tl2YTPprifoOlboWXQYnVnO0=
X-Gm-Gg: ASbGncuZLqX8mhOFrWXZCKqrNCdYV6Z6WO1X3KLZnk1eYNw02uEdPhcHf+3q/XGQQSn
	9Ko9/4PUXQaG858QIIc8KNJ51pjY+yJjrVIJfBDdxd7N/mGKyRQzpKDse0nxYdMRYMaXfajSLUK
	CETkoADeeDmCMWyHpvP4SahHwV0JkePTeg++7j9+wq5nYST8CW+TuD/LgWMQjBVcD3W2a8NGYcc
	pbikitW2uryW/xAQyWlprdv9aeU51ynSX3KmzysT3cg4oVRJkX1nzsUGm4pL48A
X-Google-Smtp-Source: AGHT+IGmWy6Aq1ZCfTZaoiG4mkrbhZY4MfRXR19EYAWZXvoUsJvrpBj01w+uPYMLT8d4w27jw93YIe/anSgqxv5w//I=
X-Received: by 2002:a05:6512:32cb:b0:55f:3bca:b161 with SMTP id
 2adb3069b0e04-55f708db526mr4266129e87.27.1756852678372; Tue, 02 Sep 2025
 15:37:58 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250902154630.4032984-1-thierry.reding@gmail.com> <20250902154630.4032984-5-thierry.reding@gmail.com>
In-Reply-To: <20250902154630.4032984-5-thierry.reding@gmail.com>
From: John Stultz <jstultz@google.com>
Date: Tue, 2 Sep 2025 15:37:45 -0700
X-Gm-Features: Ac12FXwG3iNj8EaL9OuUHyuMyacZ5I_i_Y3lylzCsdPDiddwbaDN3qJymljUZSU
Message-ID: <CANDhNCoM4RFX-QccF7xT=+-tduGj9OZ_8SgrTVyRucMwyVc73Q@mail.gmail.com>
Subject: Re: [PATCH 4/9] dma-buf: heaps: Add debugfs support
To: Thierry Reding <thierry.reding@gmail.com>
Cc: David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Sumit Semwal <sumit.semwal@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, 
	"T.J. Mercier" <tjmercier@google.com>, Andrew Morton <akpm@linux-foundation.org>, 
	David Hildenbrand <david@redhat.com>, Mike Rapoport <rppt@kernel.org>, dri-devel@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-tegra@vger.kernel.org, 
	linaro-mm-sig@lists.linaro.org, linux-mm@kvack.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Sep 2, 2025 at 8:46=E2=80=AFAM Thierry Reding <thierry.reding@gmail=
.com> wrote:
>
> From: Thierry Reding <treding@nvidia.com>
>
> Add a callback to struct dma_heap_ops that heap providers can implement
> to show information about the state of the heap in debugfs. A top-level
> directory named "dma_heap" is created in debugfs and individual files
> will be named after the heaps.
>

I know its debugfs, but this feels a little loosey-goosey as an uAPI.
Is there any expected format for the show function?

What would other dmabuf heaps ideally export via this interface?

Is there some consistent dma_heap-ish concept for it to justify it
being under a dma_heap directory, and not just an independent debugfs
file for the driver implementing the dmabuf heap?

thanks
-john

