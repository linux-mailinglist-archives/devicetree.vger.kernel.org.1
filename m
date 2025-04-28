Return-Path: <devicetree+bounces-171701-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 48131A9FDF1
	for <lists+devicetree@lfdr.de>; Tue, 29 Apr 2025 01:55:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 46D343B5B6F
	for <lists+devicetree@lfdr.de>; Mon, 28 Apr 2025 23:55:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2106E214A68;
	Mon, 28 Apr 2025 23:55:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="nTGi+hhG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f175.google.com (mail-qk1-f175.google.com [209.85.222.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7259F20FAB3
	for <devicetree@vger.kernel.org>; Mon, 28 Apr 2025 23:55:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745884531; cv=none; b=fEasjjbV7dVL1kMMLe9GzQHx16eeNsMsDugLv2kZ5uXbYShVtyFKJnTJ1ye2HujZ9FQXqGos/BQJoXCWa5/7GebQX4gTqq5C+eqwrkGQFfAQYWloS33EwYZeWOv8DGV4rbeiAyVSNXL142jPZFZeYxOBMdKt/m1Zyb0wF6NpdRU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745884531; c=relaxed/simple;
	bh=LJobFLI9bUS7cIOXH6lW9QHErDLL0/CVqlV/7NhJ0Ck=;
	h=MIME-Version:In-Reply-To:References:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=X7uPh7wAGBeurBN++jssL0geNJfZSDGnKiP6AxqZA0xD5WC8AIn5Ull8efUoUTfp5ulEgDrwfWp9iJdpEYOFxXpk4mdGXyKQ8a1/ykQy1Un+uuiHSeFCd0RWNGwDHPUyBB1qEA0X1cmRuULzV3MIO7kIiXvIE1n4PbqprDKdcWE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=nTGi+hhG; arc=none smtp.client-ip=209.85.222.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-qk1-f175.google.com with SMTP id af79cd13be357-7c08f9d0ef3so336866185a.2
        for <devicetree@vger.kernel.org>; Mon, 28 Apr 2025 16:55:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1745884528; x=1746489328; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:user-agent:from:references
         :in-reply-to:mime-version:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LJobFLI9bUS7cIOXH6lW9QHErDLL0/CVqlV/7NhJ0Ck=;
        b=nTGi+hhGTm2sh/Y3PlnAGmImJphWmL37M8RcAmWcF8Op4Z/M0iPEm2M8QUeGKA8LfG
         WrEC0LHNUtYYiufme7KNydxn1I483kLRoyBG8r/P2HL0sOl9SRiSHJkuzrZDJw9r+bWg
         A5oJ3kdmkD8HX+RgVrQg74Pnm49QKHbh4QNLI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745884528; x=1746489328;
        h=cc:to:subject:message-id:date:user-agent:from:references
         :in-reply-to:mime-version:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LJobFLI9bUS7cIOXH6lW9QHErDLL0/CVqlV/7NhJ0Ck=;
        b=vogOFdieTBarljB9QW0GpaxAp2gGGb6U3/QkKQe/LnizqPBG+LPtLZRvr+2mKscoI6
         +QtePyCtoMf7sVIhHdptrlXyTx1qqERhQ1fKostV9ppTprTQlJVK5WEu4YbvNbOMdCnw
         LjGUgkWo8Yr8yrm3Mi1ygg2/HdUWaakrAllpCgX/l1jqiePkvdIlP5A3EkuNh6nlFA4M
         6M6wgnZH9oNSrH5WR95eaMg+gVWhxZVr8kofkeOUlMVwwKmalOmFhV6uNT8uSYpAZHXG
         F97vzGybzanlllV+duIRaiHGvIqroMJ55CwgcNoHaFEcLWCF4UmTTiRhbTqGTuszJaSM
         jYYA==
X-Forwarded-Encrypted: i=1; AJvYcCW92mU/ZUk3juGRx9JnNdoalK1qDrExj3Q7NoSGh8q29UepCkdL8HNDTxFm4L+a0+RpYKudsahU9wnN@vger.kernel.org
X-Gm-Message-State: AOJu0YxwQPX2kp+JOWIySLHfQRsHxey/gpXZBeJ06g9AkY1wFRuoevpu
	jK8sCTxyFXL2rCwcT4uPojAkGPVQDa6quwpBrOaF2hH15zSmMYHQt3GIump0SXy1b7YxkuxhLd7
	Jm9dMI9ESEmxy7d4L/4hMWUvuG8HrF8u9Yv4u
X-Gm-Gg: ASbGncvBKIioPJizi8chp6lZxipifQ4sIMkeNjPqWC8/wfJA/UnHBA9RItS8pWOzjnB
	ZbmTjds0+fO6CWYyb0xrjgaYsBVYqZgj496NwXo29FNDTCR0bDYigdK0ZQ7kAtjzMCanBcAqAaw
	Q7kUy1fugCFTLZFOX5riC8/3bzLDnGjyT+fh3TvKtmB1YNAg76lwiBDVv1R83I
X-Google-Smtp-Source: AGHT+IEoQ9Mtpgq6IV7o2myPZsE3iTvANfEmqsxJiZUsKgJmcwAzipipK3XToxVL1xycDMjbiz/L+FlGLzhvF5FKt7E=
X-Received: by 2002:a05:620a:2610:b0:7c5:5e5b:2fdb with SMTP id
 af79cd13be357-7cabddaf1cfmr245880985a.41.1745884528355; Mon, 28 Apr 2025
 16:55:28 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Mon, 28 Apr 2025 16:55:27 -0700
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Mon, 28 Apr 2025 16:55:27 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
In-Reply-To: <6eeb7bca-6018-46de-a7db-7189d60c0942@oss.qualcomm.com>
References: <20250416000208.3568635-1-swboyd@chromium.org> <20250416000208.3568635-2-swboyd@chromium.org>
 <6eeb7bca-6018-46de-a7db-7189d60c0942@oss.qualcomm.com>
From: Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.12.dev8+g17a99a841c4b
Date: Mon, 28 Apr 2025 16:55:27 -0700
X-Gm-Features: ATxdqUHpAwR2wd_47EUgCGBgUk1wdQDezy5iMkujDq5bA3ST_h6HrhmS7YUoEN4
Message-ID: <CAE-0n53ypGBXAt3frrbfAsbJZEkxK4BCB0+3MWOFRxZ9E+6P9Q@mail.gmail.com>
Subject: Re: [PATCH 1/7] platform/chrome: cros_ec_typec: No pending status
 means attention
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, Tzung-Bi Shih <tzungbi@kernel.org>
Cc: linux-kernel@vger.kernel.org, patches@lists.linux.dev, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	devicetree@vger.kernel.org, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Rob Herring <robh@kernel.org>, linux-arm-msm@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, Conor Dooley <conor+dt@kernel.org>, 
	Benson Leung <bleung@chromium.org>, chrome-platform@lists.linux.dev, 
	Pin-yen Lin <treapking@chromium.org>, 
	Abhishek Pandit-Subedi <abhishekpandit@chromium.org>, =?UTF-8?Q?=C5=81ukasz_Bartosik?= <ukaszb@chromium.org>, 
	Jameson Thies <jthies@google.com>, Andrei Kuchynski <akuchynski@chromium.org>
Content-Type: text/plain; charset="UTF-8"

Quoting Dmitry Baryshkov (2025-04-22 06:38:17)
> On 16/04/2025 03:02, Stephen Boyd wrote:
> > If we aren't expecting a status update when
> > cros_typec_displayport_status_update() is called then we're handling an
> > attention message, like HPD high/low or IRQ. Call
> > typec_altmode_attention() in this case so that HPD signaling works in
> > the DP altmode driver.
>
> Fixes?

I didn't put a fixes because it only matters to make the displayport
altmode driver work with the typec port which isn't used so far on DT
platforms. I view it as a new feature, not a fix for an existing
feature, because we don't use the altmode driver.

It also seems like it was intentional on ACPI systems to only handle
mode entry/exit and not HPD signaling per my reading of the mailing
list.

