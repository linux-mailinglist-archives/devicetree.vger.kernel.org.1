Return-Path: <devicetree+bounces-263284-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sKRqDuS6hWmOFgQAu9opvQ
	(envelope-from <devicetree+bounces-263284-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 10:56:52 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 97553FC516
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 10:56:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 991E0304045F
	for <lists+devicetree@lfdr.de>; Fri,  6 Feb 2026 09:56:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EB610363C5F;
	Fri,  6 Feb 2026 09:56:01 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f182.google.com (mail-yw1-f182.google.com [209.85.128.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF80F363C53
	for <devicetree@vger.kernel.org>; Fri,  6 Feb 2026 09:56:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770371761; cv=none; b=uKzeJNAE1bQ9wBwXtGQ+GNU1g1ks5aBKbGJPqApIPSQ52jKlYtGC1NHqdNHXIIwpYVdsVQi8urxHzP812O4wPeKbRMpkQRLKe84okzCbhuHR3ZVucdvQaFD/I1dI3q6Gj/ziGfkQVYy/L2LSTD6qDUyvqoYNZo+wGU/l7g4M8Ng=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770371761; c=relaxed/simple;
	bh=ks67mbrW8VtB8valG/0Ic4q75jghFnw4wLHJ2kUJNVs=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=D7ImFravcNrgtca9MZE69VBkU7VU4RqFrPexEqoKEBYrfyhZ3lAg0usq5NKgXwp5Yo70ACNrsIGGnQrRNDHGMdyJ1YAww0USn8RXV15LBwmryjrzCBcs15F4rSRFh8WR+rCCz/AFcmCzYyrYzm8XzdEHQmcm79l47Gfs5tiPiTk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=debian.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.128.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=debian.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yw1-f182.google.com with SMTP id 00721157ae682-79088484065so17952387b3.1
        for <devicetree@vger.kernel.org>; Fri, 06 Feb 2026 01:56:01 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770371760; x=1770976560;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=jdgOyDhEf0Ql4u7mAeWkE+P24j2qd6iwdl54FBHXLek=;
        b=Y6+JARSEBB7vMcx7hPI7H6tzQbQcU4I0quWvp2S8eOzutfKqdC0H8XAvWyoilcZ7PF
         aFxVY65GUsQ9YOfy8kk0qFClDtFb4iiXMrkz4hbj1ne4KtGKxROWC8ZiTce8tQS7/nfj
         yneyheTARXeTceHXDlgHKxnd/Foxyr4kON3LkM1zJsAsnDWUhL8O7MgvkEjaoFFv7tjq
         nkS29DDM2moUG9mKOfFfJb1p+SSwzqH5r9YamXIVK1CbQ5pKhL0k57iJ6Bz9lUrF0ZWo
         nTGHWMEE3YKUhK0SPwYp7OHdQgsSK70lWQ7r3ZbS7yLvKfVOZaJifoW9TsNHimjzX/HA
         Jauw==
X-Forwarded-Encrypted: i=1; AJvYcCWbxSHbwGUEngIAImLvci4X/H3ot+b4CyFFqp3vvthKYpBxPz93Xn99FIU0uHbLQyJMmI/YWECB2PwI@vger.kernel.org
X-Gm-Message-State: AOJu0YzvsEkGK68Kru81kAYOAyKfZEkBwBIrF3+1YNsBRTc3+SzKRYxg
	b3xZ54ihfCDTv8LMpoVSyxX1sFFggvU4ELDXdjaRrHoQtJjPMxn8ZASFjJhXYA==
X-Gm-Gg: AZuq6aLQOdZ0HfS5CNVpPVjfR9KsHG5N4laPwWGPpaHYycoj+BOY4hVbei0M7KiYJ0z
	jHYs2izCAq4hGKgUKdBGNQhqvADQTiUATPrXXAJ9PtuE+MGnhFl9w3Jfwv6SsOMJR+q9ktyxJfg
	uIYWi/X7XZSJpMkPNLQb6YB3fX9VeMsLMiavRvz/XQ2QnmgUE5duXpgKQNWI7S+hlCu0A2FUGj9
	9Kq/Qwlb7Byye9YvYsflzK4g5D3zU1rNCKiHd4vaaiQIoLtSnzCcD0iXePSvhdFDWADtuF3iyWD
	XNcH5UiXa7QyyXX25r75unxKXK+wz3QwEEzENloXfwXEVGANkObdZQB19uLBxOZvxAxp+d9AHj7
	RTTDJfKgXP5n5dLUyxfueg5qF33t1NNkjPdwgE8EApXe/trTmdaWTyOhXjKq0mZ+d/e+SPPwHe9
	BmyxgU8KVpctohLGHVje0UWq2YmOutL0h7jZ7nMNhnkNy+kg==
X-Received: by 2002:a05:690c:6f09:b0:794:a52a:ad12 with SMTP id 00721157ae682-7952ab5a6a9mr37656787b3.59.1770371760576;
        Fri, 06 Feb 2026 01:56:00 -0800 (PST)
Received: from mail-yw1-f178.google.com (mail-yw1-f178.google.com. [209.85.128.178])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-79529e45621sm17332267b3.0.2026.02.06.01.55.58
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Feb 2026 01:55:58 -0800 (PST)
Received: by mail-yw1-f178.google.com with SMTP id 00721157ae682-79088484065so17952087b3.1
        for <devicetree@vger.kernel.org>; Fri, 06 Feb 2026 01:55:58 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCX/fCT0lB4IW953gUhIpzUFt4o14H8DIsmElBJBr7pOrz1khfdbWBVdfhFGoucIiojx3RPK52DHeIGM@vger.kernel.org
X-Received: by 2002:a05:690c:f87:b0:78a:722f:a7c9 with SMTP id
 00721157ae682-7952ab475cemr40723177b3.47.1770371757993; Fri, 06 Feb 2026
 01:55:57 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <6cd569ad19ae8efb5f4244b3aa185754@gmail.com> <eb9c1489-4496-48b3-8709-739cd45c11b0@oss.qualcomm.com>
 <d398cd57-41b8-4646-834e-ff0c0b7ff749@kernel.org>
In-Reply-To: <d398cd57-41b8-4646-834e-ff0c0b7ff749@kernel.org>
From: Roger Shimizu <rosh@debian.org>
Date: Fri, 6 Feb 2026 01:55:47 -0800
X-Gmail-Original-Message-ID: <CAEQ9gE=kH4Np32xZdp+jzaTo9TMjtLVRD+xaimuKWxdag2Whew@mail.gmail.com>
X-Gm-Features: AZwV_QhrV8RX-a6BnCE5CUXFoFNSDC6T2mgiJ6-BcH7orNDWWzI87VJPeY7_zio
Message-ID: <CAEQ9gE=kH4Np32xZdp+jzaTo9TMjtLVRD+xaimuKWxdag2Whew@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: qcom: qcs6490: Add Thundercomm AI Mini PC G1 IoT
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.46 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-263284-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	MIME_TRACE(0.00)[0:+];
	DMARC_NA(0.00)[debian.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[rosh@debian.org,devicetree@vger.kernel.org];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-0.988];
	RCPT_COUNT_SEVEN(0.00)[10];
	R_DKIM_NA(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,mail.gmail.com:mid]
X-Rspamd-Queue-Id: 97553FC516
X-Rspamd-Action: no action

On Fri, Feb 6, 2026 at 1:41=E2=80=AFAM Krzysztof Kozlowski <krzk@kernel.org=
> wrote:
>
> On 04/02/2026 10:20, Konrad Dybcio wrote:
> > On 1/31/26 11:31 AM, Roger Shimizu wrote:
> >> ---
> >
> > [...]
> >
> >> +/ {
> >> +    model =3D "Thundercomm AI Mini PC G1 IoT";
> >> +    compatible =3D "qcom,sc7280", "qcom,qcm6490";
> >
> > You need to add a board-specific compatible here, see:
> >
> > Documentation/devicetree/bindings/arm/qcom.yaml
>
> The true problem is that this would probably fail validation, so I
> suspect this was never tested/checked.

Thanks for the review!
I did test this device-tree with the board.
If you mean some other test, please let me know in detail.

-Roger

