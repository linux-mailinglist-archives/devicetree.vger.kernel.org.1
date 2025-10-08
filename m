Return-Path: <devicetree+bounces-224659-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 85443BC6ED6
	for <lists+devicetree@lfdr.de>; Thu, 09 Oct 2025 01:38:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D26E41891604
	for <lists+devicetree@lfdr.de>; Wed,  8 Oct 2025 23:39:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 599F72D0638;
	Wed,  8 Oct 2025 23:35:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="vw7Bb92h"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 640D62D0618
	for <devicetree@vger.kernel.org>; Wed,  8 Oct 2025 23:35:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759966510; cv=none; b=eIo8f5ricPTdxOlxlRX55BfoJR2NIJg+Ay+ya+MN+MG+rf4M0SiqUESgkkUpySgoG/MqTwi6a85Tr6qJd43BoWqnwbiFzz+svJ4C5WtcZUz9kCup0WNsV4uNJj1z3XwEyfmNj+/6CoRreJLp4fVi5644rKWq5E+DjQ2SzyCGlMM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759966510; c=relaxed/simple;
	bh=9igNQRi1zsIULgFOJ+Hpha80v02kSWzsiG8eRfeHWOg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=WWibqGkRgTsO57+Zremnz6uJuV5L8gqXoCLuIzi7g48AkNmciNRy5bf2W/lGXU2xTc/lxfpQoPV5awiSF/dFCrn6AkusHAyxnr7INOBXwybp79Y5cKT8oOE4n0biYhvoJpex4I4HPonPFrvczSZdoahlH+w+CGfHJXahRkeFDcs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=vw7Bb92h; arc=none smtp.client-ip=209.85.221.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-3ee130237a8so398495f8f.0
        for <devicetree@vger.kernel.org>; Wed, 08 Oct 2025 16:35:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1759966507; x=1760571307; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=9igNQRi1zsIULgFOJ+Hpha80v02kSWzsiG8eRfeHWOg=;
        b=vw7Bb92hM90H9chxoWRY7TYUuNiZkaPWRN8l+Rh0APRdDAgKPQijy8I0B0+/yG+vMS
         2QxwPhHyOzPjOqQXmGf7kto9UTlPIOkm+SSSU7J8EQHt2gO5keOeUlQM3uZDLzkBoVcX
         Nb2y9450owpUl9irmBkbQdw61by0hcAWmRc6csFjcEVypZeVemzjBtr2KlTfD3JcHfMP
         BpiuQa+9pKuuCpQfg5+wl2RUHJWLvb7yZ5Pvsw56ModGSQ3MLHnNJb18K7nPgJWMtlSN
         X9avtg1e0LT8tvXdEk7B+F19TrJgDB3vKjdFmZ5mlx34Mu56ePezV8zS2/o2xDeuDnSH
         jlXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759966507; x=1760571307;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9igNQRi1zsIULgFOJ+Hpha80v02kSWzsiG8eRfeHWOg=;
        b=TMdQtKMoqweSdmPqQrCywez86wL3fLrE995/QBOVr/UP8oTxwggHAQD2ZJ5tgEaEIn
         j3ozifPvNj78le6cHCa/hEEI6KIHxFHinGFHarQ+gdS2f4LJLSdZZRV1QOy86Sq92bAg
         R/Z7tiuWaV9BLNn6XWmtUXTJoUZPZus/tSLlBtFKkduWTA6VsJ7uSxAQ3f1iqblh9MqI
         +kaOGlAW+Dj/l6j5gg6hbjPQyyddsZbld/U+8mT+QUrpaC0FFK8k/5W/pIOVWOO1/NUd
         8qgHaSkHPEPJSOMLEdtpshZ3axLNC6ND6R05WcMhUp2Se/ZlPOaXnOa0BSPMHg3/pBk5
         H5ww==
X-Forwarded-Encrypted: i=1; AJvYcCWYxOyIIc0TpkN5REaBgOXUjW2StWEKf2g1C1IzkJ8ct43iAGfVFa97KBJkU3bcFqLO6l66sQvMqt4l@vger.kernel.org
X-Gm-Message-State: AOJu0Yw4wAF3L3GW96YBC+2WgUALHmF3v7nu179fqwI11kEGCu+lyjyb
	SRcmqAFhiYmGmkcL69RKR87y5Hedx9DoiM7BUid1Aldy22CQwhcS3RhYqjsgGzux7EsADTBkwZN
	qwSG9xdP1oOB1QdP4THH3BrShY1A/CfuKHhXiz5K/
X-Gm-Gg: ASbGncuQSGYJ7jcSEdSaN7HygkxFWoLDUe9TywyO7qJ8iczTv5bI9lamrDnCZCv694v
	7W4ICzQK7shWiuO0sEt8vDlZKTT05HaPhytVKCM3HLtVs3cCAHy6mLI5jcZKEz0P6M5Tnm6Tpvm
	O+iXmhiLKKu6fsBxt8MXdB9GW9l5bDfeuAZ9SqwylypAuxRLHdtzURzJb5rIsV/CUegUux7nXwu
	Mjzs9WToZpT6CU4ffDw9qAIFCkYXVf/9B1JhpApTppWkSrYbbfn2HQodv+7xztiuj3UWmPcO4lH
	4UvVhuG8IdFw7g==
X-Google-Smtp-Source: AGHT+IEqmdZ9VxhWMpDcRldSURNd0QiDBJUs0+1kYdV5l/JzukTnaa5H9DzGsLurz4/S6KkfONlhR48b+fTHniX4RxU=
X-Received: by 2002:a05:6000:4313:b0:3ea:6680:8fb5 with SMTP id
 ffacd0b85a97d-42666ab29d5mr2881250f8f.2.1759966506486; Wed, 08 Oct 2025
 16:35:06 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251001193346.1724998-1-jthies@google.com> <20251001193346.1724998-4-jthies@google.com>
 <aOZUq6K8bZtciL6Q@kuha.fi.intel.com>
In-Reply-To: <aOZUq6K8bZtciL6Q@kuha.fi.intel.com>
From: Jameson Thies <jthies@google.com>
Date: Wed, 8 Oct 2025 16:34:54 -0700
X-Gm-Features: AS18NWDl9Wn1v62FRwVNd2rJ20xgecQEZIHrqIoqrT8lQI_Q_BqxHXid5fR55og
Message-ID: <CAMFSARfn_ULu2+JXjGSjz4KPDOSD=MAcKS8XwZNqbHf7YL6JBg@mail.gmail.com>
Subject: Re: [PATCH v2 3/3] mfd: cros_ec: Don't add cros_ec_ucsi if it is
 defined in OF or ACPI
To: Heikki Krogerus <heikki.krogerus@linux.intel.com>
Cc: akuchynski@chromium.org, abhishekpandit@chromium.org, krzk+dt@kernel.org, 
	robh@kernel.org, bleung@chromium.org, ukaszb@chromium.org, tzungbi@kernel.org, 
	devicetree@vger.kernel.org, chrome-platform@lists.linux.dev, 
	linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

> If you are not using that for anything, then couldn't you just use
> acpi_dev_found("GOOG0021") ?

Thanks, this is a good suggestion. I'll switch to acpi_dev_found() in
the v3 update.

> Can there be multiple UCSI interfaces on these systems?

None of our devices will support multiple UCSI interfaces.

