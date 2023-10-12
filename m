Return-Path: <devicetree+bounces-8016-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CE007C6762
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 10:08:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 365C31C20CFE
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 08:08:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DD291171CC;
	Thu, 12 Oct 2023 08:08:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="Trq/wkjk"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76FA3101D0
	for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 08:08:36 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 08F3991
	for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 01:08:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1697098114;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=4sy1niajabmtfJtjCY77OzeeT/0lqMPwPT7C3Wbak1k=;
	b=Trq/wkjkP/czzNLwk/4UM5YK0v5AqZU11XvCXI2sMUf6Q9xd7gkc5iCDN1vM56fOnRhwrw
	MmI6bueIW3UKCfOymadbIrUETWtMuuT+iwlw4BstqR5CrPOotdVYmj0vv+xy0Vjxrkwz5r
	jnEermntmyWUMF9AqoZ6FchU+AsEvLk=
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-245-z3Yjvs0XO06aFcNVHHAyjQ-1; Thu, 12 Oct 2023 04:08:26 -0400
X-MC-Unique: z3Yjvs0XO06aFcNVHHAyjQ-1
Received: by mail-wm1-f72.google.com with SMTP id 5b1f17b1804b1-405629826ccso5717055e9.0
        for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 01:08:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697098104; x=1697702904;
        h=content-transfer-encoding:mime-version:message-id:date:references
         :in-reply-to:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4sy1niajabmtfJtjCY77OzeeT/0lqMPwPT7C3Wbak1k=;
        b=Yq0YtqNwKaNY706C75+863iytylNIjckPOiCMMqwaXdecNNZ2J0fEHx+czol78h7b9
         3gLcP3Rbw2JxmkQ02T+5Ttj35TFERsRVkrtACVO77N2HDSsGN4ORj+PKEHv/SDlpc0s9
         qCVHoL8cvYelCRem7JblkA+WITqa4dRCGgQQmKMvc3jBXXRvHF6g8Held/94kboZvBXY
         YC6guYG+1on0V5ObG89m5pN9dkt22ptULx12iWWrZ4kqVN+MgPecIykzkb9H+UrzvX9F
         ImB0kVdUdn+wbVVbUMdPKWGEo8nUWMXCWsU2fP9BJA4PkKP284B3wCScLhKFmuHIrOhB
         cL5w==
X-Gm-Message-State: AOJu0YwCujaSe7keHzcmJM/cLVVtAW3LXYD4POy9amYco3bmhqPo7a2T
	eAkRuTgxZEpheX/XLShlAs5QNB+Lp3CYcoj31vQO0hhdmbKboi/Pb93IZPcRHJtVwtmPEilv7zw
	yQb2BglSDQn+7Kj3C2jBTRQ==
X-Received: by 2002:a05:600c:4fc4:b0:407:6911:447c with SMTP id o4-20020a05600c4fc400b004076911447cmr789175wmq.4.1697098104765;
        Thu, 12 Oct 2023 01:08:24 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGiZTBKUlCnAh+CV/NuP4uEbPNN+Std09KdK+CwQMNFHnOTkVZIvzDNtwZ5zDNL5/aKHpfW/g==
X-Received: by 2002:a05:600c:4fc4:b0:407:6911:447c with SMTP id o4-20020a05600c4fc400b004076911447cmr789152wmq.4.1697098104439;
        Thu, 12 Oct 2023 01:08:24 -0700 (PDT)
Received: from localhost (205.pool92-176-231.dynamic.orange.es. [92.176.231.205])
        by smtp.gmail.com with ESMTPSA id 19-20020a05600c025300b00401d8181f8bsm21134403wmj.25.2023.10.12.01.08.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Oct 2023 01:08:24 -0700 (PDT)
From: Javier Martinez Canillas <javierm@redhat.com>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: linux-kernel@vger.kernel.org, Thomas Zimmermann <tzimmermann@suse.de>,
 Conor Dooley <conor@kernel.org>, Peter Robinson <pbrobinson@gmail.com>,
 Rob Herring <robh@kernel.org>, Maxime Ripard <mripard@kernel.org>, Conor
 Dooley <conor+dt@kernel.org>, Daniel Vetter <daniel@ffwll.ch>, David
 Airlie <airlied@gmail.com>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Maarten Lankhorst
 <maarten.lankhorst@linux.intel.com>, Rob Herring <robh+dt@kernel.org>,
 devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org
Subject: Re: [PATCH v2 5/6] dt-bindings: display: Split common Solomon
 properties in their own schema
In-Reply-To: <CAMuHMdVR=aM-fr6SLfZMyA-Mdw23Tv+rX-iQQmw5u5U3vW5Ajg@mail.gmail.com>
References: <20231012065822.1007930-1-javierm@redhat.com>
 <20231012065822.1007930-6-javierm@redhat.com>
 <CAMuHMdVR=aM-fr6SLfZMyA-Mdw23Tv+rX-iQQmw5u5U3vW5Ajg@mail.gmail.com>
Date: Thu, 12 Oct 2023 10:08:23 +0200
Message-ID: <874jiw4614.fsf@minerva.mail-host-address-is-not-set>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
	RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H4,RCVD_IN_MSPIKE_WL,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Geert Uytterhoeven <geert@linux-m68k.org> writes:

> Hi Javier,
>
> On Thu, Oct 12, 2023 at 8:58=E2=80=AFAM Javier Martinez Canillas
> <javierm@redhat.com> wrote:
>> There are DT properties that can be shared across different Solomon OLED
>> Display Controller families. Split them into a separate common schema to
>> avoid these properties to be duplicated in different DT bindings schemas.
>>
>> Suggested-by: Rob Herring <robh@kernel.org>
>> Signed-off-by: Javier Martinez Canillas <javierm@redhat.com>
>> ---
>>
>> (no changes since v1)
>
> New patch in v2.
>

Yeah, I mention that in the cover letter. That "(no changes since...)"
message is automatically added by the tool I use to post patches (patman)
for all patches that don't have a change history, even for new patches in
a series revision. And I don't know of a way to disable it...

Maybe what I should do is to add a change history to new patches mentioned
that is a new patch to prevent this message to appear.

--=20
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat


