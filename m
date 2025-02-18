Return-Path: <devicetree+bounces-147920-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A5124A39D20
	for <lists+devicetree@lfdr.de>; Tue, 18 Feb 2025 14:16:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BFCAE3B133F
	for <lists+devicetree@lfdr.de>; Tue, 18 Feb 2025 13:09:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4EB51246353;
	Tue, 18 Feb 2025 13:09:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="DpQ+inxR"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A7F62156F4A
	for <devicetree@vger.kernel.org>; Tue, 18 Feb 2025 13:09:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739884181; cv=none; b=QBkqjjrUxLi/4qmADiWyuub7OlDsWqp9jjJ1mOXssputoMCQRB9QgAY04tcVVNk53HMawM1lLgICiHF2raMFUhl3q2NTeg1xTM6QFJe1ns9lk0vWJESB+UrOv6iFV/eYHYhl0i2AVQ5yQYkCbx28EKsOf4tz8XCpjnm46toa4jY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739884181; c=relaxed/simple;
	bh=z0j4Vm144VHYx11zlR4uyhxpBXBQoMAr0tKnHXqln9Q=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=AsgsPhV4XSFGuQw3jGvXfAJyLq5e8jPZvYP2W9f/4wkdzHFj1+YKXW7LAiAjWK3rsAzqzw0WOy2q0Z7oMEvnP2M5ayD3pW2U041uwMknAE9sl3UN4zKQjyZVjhpR6aQHSpF6R3O/C2xuYyibyc8hL7+JS1u4WQ5++6ENZ5+dEyM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=DpQ+inxR; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1739884178;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=z0j4Vm144VHYx11zlR4uyhxpBXBQoMAr0tKnHXqln9Q=;
	b=DpQ+inxRDCBXZBmIYDxfpIpfcI0wARxbqPwfRURlUj4m/XAVME3VedoIgI8jCUJrLzBZ9S
	u0dV5tCGTl7OchTku5MBfpcpBdMpSCEV0e5Ua9w2zuIDVBC3oCNf7P3DR9IDN1ztxqYxeT
	LFSDX+8CGYAJlK1wuH4FnSysAqQ+vtU=
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com
 [209.85.128.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-376-OcUq4MaRPP6SjVDaLFUmaw-1; Tue, 18 Feb 2025 08:09:37 -0500
X-MC-Unique: OcUq4MaRPP6SjVDaLFUmaw-1
X-Mimecast-MFC-AGG-ID: OcUq4MaRPP6SjVDaLFUmaw_1739884176
Received: by mail-wm1-f69.google.com with SMTP id 5b1f17b1804b1-439858c5911so10451985e9.2
        for <devicetree@vger.kernel.org>; Tue, 18 Feb 2025 05:09:36 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739884176; x=1740488976;
        h=content-transfer-encoding:mime-version:message-id:date:references
         :in-reply-to:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=z0j4Vm144VHYx11zlR4uyhxpBXBQoMAr0tKnHXqln9Q=;
        b=Zx2YYrrptnvj3iLloEyBsJN8Eh+oTGRYZnwvXLyzEwNng+d2KYfJ7bIxg0MDhD+2DB
         FfWS3f3KbzPbLyb7alCgnflQnig7utCFNXmfQMSXM9Vpg0LQREFo0bb4rdUMsUTdpuoj
         Uetdp8ielz5C6hl+jL/3cZT1jQYV5oEcYz4YRo7ITlhUjvCFWxZf7JCoI8ge+R/3dQH3
         nR1SV+Dod5tk3ARnTGpBhWe7Z8HqzOvQqtopnnuXmWCz5QvwKiC18t721RIwtY/AgvMP
         3xMPA3nlmIwNtDGr5K4zcRljBCCLG2gtAOJ5czXQR2EIyeSFB2oROFCzzIBhOwny45Jg
         B6Bw==
X-Forwarded-Encrypted: i=1; AJvYcCVpad/4H7kr+D1fEnMQPo+NuszXrTJ3uKIpEoFHqTFMZiWo+xnOeWoF1jr22D62hQKpLK7U4YeXWpSF@vger.kernel.org
X-Gm-Message-State: AOJu0YzoTrprfwBkkxHO4AQG6Mdrd1Az08C5BD2KRN2y9iHNCmS1y0WZ
	6+vqxkUXlJbzMAjqfngoX+6cRC1RnPwo96nkDR8qFNHhkWGTghXf3wkVBiM1obEP63EGvDzr9ff
	LaPwxPYZ2TT1XILAERCI+WascV0WLAf/DBO/WEtx5PNuBBKCom2S62Tpw0Ok=
X-Gm-Gg: ASbGncuoQ4NSfb1cwcq5ynlgaU7BqTYM6PNuHhy3ZMhKh7/aXrY7q3E/jWvRrkCyRRX
	Df7KJTC1eEHxpt9JkUd14eg/kgtAASthEDZGNyiarph9N7vvVsOdmbFPdN+39dbSQlOB4xrPX46
	jbE+PEp37cmRHqlDWOPGs9WCEzYaYtaYKOPTRqXgg6PV6cqHKWItBXn6W0eqECD552RfqiLBKUC
	8jCgI1HUnyaCMUNl8ry/q/bUzh3aZ2FHGSosSMPSckqj22AMl8PNn2VnJCRIQSKViRfVuGflesj
	KC411EBBxmxQa3oVHpdtpEQ7SjRe9HhXfMEUwXYPcinQ3RKKGGW2HM29CBWqB30=
X-Received: by 2002:a05:600c:4511:b0:439:88bb:d006 with SMTP id 5b1f17b1804b1-43988bbd499mr60329705e9.6.1739884175797;
        Tue, 18 Feb 2025 05:09:35 -0800 (PST)
X-Google-Smtp-Source: AGHT+IE0DOpj43RZFNp+JX/ZShx8BlmwPqpc6v5z2QLXz9M5znTKLEaWABk7Mv2M22qyQ8wS4NqHSA==
X-Received: by 2002:a05:600c:4511:b0:439:88bb:d006 with SMTP id 5b1f17b1804b1-43988bbd499mr60329315e9.6.1739884175398;
        Tue, 18 Feb 2025 05:09:35 -0800 (PST)
Received: from localhost (62-151-111-63.jazzfree.ya.com. [62.151.111.63])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4395a1b8443sm182296005e9.35.2025.02.18.05.09.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Feb 2025 05:09:34 -0800 (PST)
From: Javier Martinez Canillas <javierm@redhat.com>
To: Svyatoslav Ryhel <clamor95@gmail.com>, Thomas Zimmermann
 <tzimmermann@suse.de>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>, Neil Armstrong
 <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, Laurent
 Pinchart <Laurent.pinchart@ideasonboard.com>, Jonas Karlman
 <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, Maarten
 Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard
 <mripard@kernel.org>, David Airlie <airlied@gmail.com>, Simona Vetter
 <simona@ffwll.ch>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski
 <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 0/2] drm: bridge: add ssd2825 RGB/DSI bridge support
In-Reply-To: <CAPVz0n0WG1Q51SONb4fmkzi4q7Q0sZ_aKSLrLnGboNNya6nO+Q@mail.gmail.com>
References: <20250217140910.108175-1-clamor95@gmail.com>
 <c19bd9b3-86c4-4f1a-beb9-b6aed32b3ef5@suse.de>
 <CAPVz0n0WG1Q51SONb4fmkzi4q7Q0sZ_aKSLrLnGboNNya6nO+Q@mail.gmail.com>
Date: Tue, 18 Feb 2025 14:09:33 +0100
Message-ID: <871pvvqu0i.fsf@minerva.mail-host-address-is-not-set>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Svyatoslav Ryhel <clamor95@gmail.com> writes:

> =D0=B2=D1=82, 18 =D0=BB=D1=8E=D1=82. 2025=E2=80=AF=D1=80. =D0=BE 14:36 Th=
omas Zimmermann <tzimmermann@suse.de> =D0=BF=D0=B8=D1=88=D0=B5:
>>
>> (cc'ing Javier)
>>
>> Hi
>>
>> Am 17.02.25 um 15:09 schrieb Svyatoslav Ryhel:
>> > Solomon SSD2825 is a RGB to MIPI DSI bridge used in LG Optimus 4D P880
>> > and LG Optimus Vu P895
>>
>> There's a driver for Solomon 13xx displays in drm/solomon. Did you check
>> that this new driver isn't just an extension of the existing code?
>>
>
> Definitely no, ssd2825 is a RGB to DSI bridge in a pure form. While
> 13xx as you have said are display controllers family.
>

Exactly. Both chips are from the same vendor (Solomon Systech [0]) and my
guess is that the SSD prefix means "Solomon Systech Device" or something
like that.

[0]: https://www.solomon-systech.com

--=20
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat


