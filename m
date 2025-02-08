Return-Path: <devicetree+bounces-144238-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id CF141A2D88C
	for <lists+devicetree@lfdr.de>; Sat,  8 Feb 2025 21:25:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D3DEF1888619
	for <lists+devicetree@lfdr.de>; Sat,  8 Feb 2025 20:25:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 42992243968;
	Sat,  8 Feb 2025 20:25:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="nbrs8iDc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78E5A243948
	for <devicetree@vger.kernel.org>; Sat,  8 Feb 2025 20:25:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739046322; cv=none; b=QWLRYDeU/bXuJVS8AvxOOwxfGl06/57mE2dXPwHKWiIsr11sIomIUn6KaExcMu9mYFhhwWArYUMdWF2pAvQCYapDMyXLbpUuSun6x+luqAEA5rmUvWIvxnI9Z9wnvBESYkbRJzfQ7jelP7suRGeb+v7nfDX8UuxJ0zbsC7akwJI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739046322; c=relaxed/simple;
	bh=6FhoGigg93hbhRP8Lf1UPXwi8h34E9BhfLcHwuSv3ZQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=TplerkAcb3tRrqTRKAXr+hyvmruvsfKF5ZP4JI4ry98SNWuRpq5F2MyexkXRfJjxQrJuuTCjcjdElOJY2CTCV2l+ye6a1eOjFnY4gu8WNNnv4neB1oWoxKjGcRRMJuy4SJuiJ+l2jLbN8dY1qk5X+1S9YfgrQhyp90xOqrv2dq8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=nbrs8iDc; arc=none smtp.client-ip=209.85.167.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-53e3a37ae07so3501059e87.3
        for <devicetree@vger.kernel.org>; Sat, 08 Feb 2025 12:25:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1739046316; x=1739651116; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RJDerw/xfRXHgl0oLYxXtpLYP2/HSeFnhpjbjeqGC3M=;
        b=nbrs8iDcgQz8OLDDFjRblzNjw2qjXazuLYgTwKav/PpZi82yrqBWQXxD1EBPDOBBu1
         9WyxVHi+ka670UwWkwStQAAHaTHCqRCMpWvhh+ewB27+SWYpHnP9rzqU1LnHf6TxJ7L+
         KqwOAzE5LowN7fLEgd5F/vOKDZnmKisZkj1qc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739046316; x=1739651116;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RJDerw/xfRXHgl0oLYxXtpLYP2/HSeFnhpjbjeqGC3M=;
        b=AHwHu/XDdu3KojIKrYf9myA9IXqW8O6wQV7Xfkspdk7fPlG00d6BxYJjsTBiWkNMY4
         fvc3Yti88VuxgsbfCI+7HxtBCOl1F+jSiTbZ0SEVTZxPrQj8nSWXqMg2P5n5GCqR2/j9
         o+jwBg8OWUGdDFH3xHI7jAMEl5x1yxC2gD+wXOzZ+0VJ180WggcUydli8TXtG5WXnRxM
         hQpD/z+HZu3pk3PgpCHHRAvtVYAyZNmemHJeAwOiHRLNs1j9WCn4YKeem8FOyu2IpPdC
         L2hKG5b0gAjGf6q62yjFM7xqa/KzRt01F39N/+TJVGFXAh2KQViaRi7S/Mz8sRhKi/Co
         1MyQ==
X-Forwarded-Encrypted: i=1; AJvYcCWLExRBKkiE87v7hlCWGwlMsi9dVpxvfaiG0OBDcBvFclXecwxUfyGzD8WUSTUH2WhICXfsZFyRmGvI@vger.kernel.org
X-Gm-Message-State: AOJu0Yx/Smdu+CinOu76Sd5qHPiK6EgOSskL256IOiYGFSPy+dkT3Xk4
	A+0KMwPArOrTOmOE25zfmMQc/ysmpR6rIw9a/RzPnGeas7Hrr5hxMKgVJGdhKixjWSAd3GOgV+I
	UOuBc
X-Gm-Gg: ASbGncssEtzLmkcTitS9xPMXrIyV/5tXblpheYBUWl52y0ggwXxmJNOU14MNy8CYCIU
	iVOQJDIYI/E9zzIek7tWnDxRmH6T5S4RMqPzwWzljhZq/dD0Zw0xd4i4RKPTQ/LHjJMBIuKFDYg
	/FiAJcn+tcvdiXGNVdhk1dFXbOdS9UIvDbvPflrDdYl/xOAx9+EH+exel3QPFoLfmB07JX1wuBx
	ckj5jth6QD3Gk+98tAkVEui/U34cUhCu5ghqQjlqojjxFJK/sZ17cNT2hEpSUaIMD4y7eh1/xBA
	Slp4XLBYSYW9SuVNB+2QrOnhy5cNVC/tJSgAIVMocWTUC+YzHNQYYRQ=
X-Google-Smtp-Source: AGHT+IG/b3ooa3HsKyFXINBx1VK5xmYszH2RbDQPNo1RO3+UbmIneaGFTnzOa6X1FuI4PFCwqzW0qQ==
X-Received: by 2002:a05:6512:3b81:b0:543:e411:cc49 with SMTP id 2adb3069b0e04-54414ae5236mr1973240e87.38.1739046315926;
        Sat, 08 Feb 2025 12:25:15 -0800 (PST)
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com. [209.85.167.42])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54506777ed5sm183846e87.134.2025.02.08.12.25.14
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 08 Feb 2025 12:25:15 -0800 (PST)
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-53f757134cdso3359381e87.2
        for <devicetree@vger.kernel.org>; Sat, 08 Feb 2025 12:25:14 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVeuKYsPnTcLmgU5XX32JclT2Yu2WQTP2w9VUj5+ZVBRssf3IdN7KhtIzHozq2+riMUQIFRBN9HSy5k@vger.kernel.org
X-Received: by 2002:a05:6512:1282:b0:544:d31:104a with SMTP id
 2adb3069b0e04-54414aa8102mr2388633e87.25.1739046313617; Sat, 08 Feb 2025
 12:25:13 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250208105326.3850358-1-yelangyan@huaqin.corp-partner.google.com>
 <20250208105326.3850358-2-yelangyan@huaqin.corp-partner.google.com>
In-Reply-To: <20250208105326.3850358-2-yelangyan@huaqin.corp-partner.google.com>
From: Doug Anderson <dianders@chromium.org>
Date: Sat, 8 Feb 2025 12:25:02 -0800
X-Gmail-Original-Message-ID: <CAD=FV=WYNRraERUdZuytYmiWuXR3UwSRybXMZ42+2K2nbkef-A@mail.gmail.com>
X-Gm-Features: AWEUYZmA-CBCC0QRXP02pRtLlgP78Gg6EgzjJkQUKaxMq3eMCZ3nTBRkI-JH_z0
Message-ID: <CAD=FV=WYNRraERUdZuytYmiWuXR3UwSRybXMZ42+2K2nbkef-A@mail.gmail.com>
Subject: Re: [PATCH v5 1/3] dt-bindings: display: panel: Add a new compatible
 for the panels KD110N11-51IE and 2082109QFH040022-50E
To: Langyan Ye <yelangyan@huaqin.corp-partner.google.com>
Cc: neil.armstrong@linaro.org, quic_jesszhan@quicinc.com, 
	maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de, 
	airlied@gmail.com, simona@ffwll.ch, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, thierry.reding@gmail.com, sam@ravnborg.org, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Sat, Feb 8, 2025 at 2:53=E2=80=AFAM Langyan Ye
<yelangyan@huaqin.corp-partner.google.com> wrote:
>
> Add a new compatible for the panels KINGDISPLAY KD110N11-51IE and
> STARRY 2082109QFH040022-50E. Both panels use the HX83102 IC, so
> add the compatible to the hx83102 bindings file.
>
> Signed-off-by: Langyan Ye <yelangyan@huaqin.corp-partner.google.com>
> ---
>  .../devicetree/bindings/display/panel/himax,hx83102.yaml      | 4 ++++
>  1 file changed, 4 insertions(+)

I might have tried to shorten the subject line of the patch a bit, but
I don't think it's a huge deal.

Reviewed-by: Douglas Anderson <dianders@chromium.org>

