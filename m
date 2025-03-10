Return-Path: <devicetree+bounces-155946-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 48374A58BA4
	for <lists+devicetree@lfdr.de>; Mon, 10 Mar 2025 06:22:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 782A116658C
	for <lists+devicetree@lfdr.de>; Mon, 10 Mar 2025 05:22:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1A3781BEF7E;
	Mon, 10 Mar 2025 05:22:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=beagleboard-org.20230601.gappssmtp.com header.i=@beagleboard-org.20230601.gappssmtp.com header.b="ZP+WQAXr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com [209.85.214.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B9871BCA0F
	for <devicetree@vger.kernel.org>; Mon, 10 Mar 2025 05:22:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741584154; cv=none; b=UEqcWN3jce9i6BNDuk9e665frtNqDITqVaAmotUEAQvN0EPtBFVPPDj4Y7UojXnYBB00k0m7fcqrbGYzahRxvgSWgstBYo836hj8/zRBAg2jJEqo4uDB+wuNP6g7p3eYyV9Jfo3ldMrzciIE+5CLWqR4V4uYQCIiUfEa399kTVk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741584154; c=relaxed/simple;
	bh=9ANippWEEfoCE0RVeI8Z10U/jIxjB0Y5weZaiBXjQXc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=e8jbyS1hrQOrWlTGQt8nIM0C9+b2bTBAAcG1yV8vekLZJR/fzMGtbSl7EeNu6fpUhcHap/jadRn6xPGcV4KAEU8FPfNy+fDt9nKRf3o9zpSwCDj3YHP9I6Bs3/Tz6w0LwLoe4g/w2HWezezZgEStXquNhK86q4+QAzcAP6y+AvE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=beagleboard.org; spf=fail smtp.mailfrom=beagleboard.org; dkim=pass (2048-bit key) header.d=beagleboard-org.20230601.gappssmtp.com header.i=@beagleboard-org.20230601.gappssmtp.com header.b=ZP+WQAXr; arc=none smtp.client-ip=209.85.214.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=beagleboard.org
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=beagleboard.org
Received: by mail-pl1-f177.google.com with SMTP id d9443c01a7336-2254e0b4b79so31940075ad.2
        for <devicetree@vger.kernel.org>; Sun, 09 Mar 2025 22:22:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=beagleboard-org.20230601.gappssmtp.com; s=20230601; t=1741584152; x=1742188952; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Ketjolz+SXx5WRzFZDWJpzxsIZR5657oF02yaVKp5jw=;
        b=ZP+WQAXrEZv+DHQENJzLkGjqVUacyEQNpYV6St0ap/6QCHRA3kNt1syck27isIkbsd
         OVBxFAnHiKY5U02Fk4uEY45Z/8Sziu1CFI8RRTAtbbFpIQaONshCnw2PQl0fe6AMDntk
         RxixSwbjZvAPflTIuMQMCfV9qvHFv7mTVtOjEFjNQk3TI/5eD6GG9OiYek8iP3pU7ZlL
         4TvkBGGK/++Wii/r+uz5lB+C3bz0Z4sa/aQDecGCuettZjun8nEC39UjhIkUnlhuR0/S
         5VXixKZwcdJcpLkHNnCJB2F7mEt962rpEDCcNuBZZga+VjgaHjLfj3oByYAsXA46hGp2
         6RVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741584152; x=1742188952;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Ketjolz+SXx5WRzFZDWJpzxsIZR5657oF02yaVKp5jw=;
        b=N2zrTu9ojcx/htwMGRsbD1Xi8XuV2AYmDR2tVwVZ7F/gh/JKgxxslrIy73RmsUcihn
         SKsrmIYQHil0pri/cwCvg2dF2aoGST6h+OnujDc7+G1hc1LA/MySy7g/WND3/6Td1571
         R/N5aw2UqXkSopytYapueDbkUY3myFEW4s4QDamHg0pQunNCXGY1VmTu0ksp4Dv5q9Hr
         x6O6dD95XObmvZT9U7hz+6nLXIbetMPbgiOrfYLl+MkuXjXYV4PXeOQ/3yg9TdndUOIw
         4NQVr91rdqdkM02o5eQp8EQN1INp7jzAEygrSpC7IvWMYhraYHQlYUftVCtuhJ2k96qP
         8UsA==
X-Forwarded-Encrypted: i=1; AJvYcCX5xUXWMncgsLlnamyMxx06EvfXGNfUT1BoaR2qK+Tz5kVwrCJbH91f031D8tm7qxah3CsDvRCmdIpi@vger.kernel.org
X-Gm-Message-State: AOJu0YxAfQRpZ06EqcfqtsdrDUJsQCG1GVzvJHPbBlWOk/d0qf1bgy10
	/BcN2Y1/QcI8nsbgW5NKRf92oMG67rEPzwC9azmsx+TUVhkMExtFjRsljTo9Pw==
X-Gm-Gg: ASbGncscFH3cVUViRFw6ewIoEdPs1oeQAgcqw5BTppKEpjknNMroiAuFZLR5VpzIZ7Q
	QvB5XjKHUlui4rMzA8kgxc6Zy9o5WOYAw8Ksq3iSYQnEHG1BzJaQkkvgEhlXUWmQnvxmZX+BKZZ
	faogJsSLM5E+eIm4/wLs71LGeiczMuV7XY+LEA/D7NMRz4YkH47eF0UIYA7M4M6lT410IMFd7di
	OsTrn3MHPtXZXU0jmN0TUQQPG6G/vniZgx4ir/scZ5d7dBuh4pFGxa7hGQOjiPejbv+/f22pkx1
	QOE0PhSKjGMPHyL1Er9EVPMNly9baBWvU0u2jqGa0pCr+FkcI5FGPxDDme3Wsg==
X-Google-Smtp-Source: AGHT+IHdwztTAI4++4iwgX0IjFKeNGGGX+i3tGWOXhS5OOLQvepTUZfggc198LHz6mP6rR8FDFULmA==
X-Received: by 2002:a17:903:1788:b0:220:f87d:9d5b with SMTP id d9443c01a7336-22428a8ca41mr210109665ad.24.1741584151789;
        Sun, 09 Mar 2025 22:22:31 -0700 (PDT)
Received: from [172.22.56.54] ([117.250.76.237])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-736df8db331sm520801b3a.76.2025.03.09.22.22.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 09 Mar 2025 22:22:31 -0700 (PDT)
Message-ID: <1623bfaf-2cb5-4271-889f-a165e74a0c01@beagleboard.org>
Date: Mon, 10 Mar 2025 10:52:20 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [Question] Status of user-space dynamic overlays API
To: David Gibson <david@gibson.dropbear.id.au>
Cc: Geert Uytterhoeven <geert@linux-m68k.org>, xypron.glpk@gmx.de,
 Jason Kridner <jkridner@beagleboard.org>,
 Deepak Khatri <lorforlinux@beagleboard.org>, d-gole@ti.com,
 Robert Nelson <robertcnelson@beagleboard.org>, Andrew Davis <afd@ti.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Luca Ceresoli <luca.ceresoli@bootlin.com>,
 Pantelis Antoniou <pantelis.antoniou@gmail.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>
References: <9c326bb7-e09a-4c21-944f-006b3fad1870@beagleboard.org>
 <CAMuHMdUhw6q1DAOBJwG5FJUs_QHj3hZMD3damOo2uLZQgS9e7A@mail.gmail.com>
 <fed58d7b-d9af-402d-a215-a7e620239728@beagleboard.org>
 <Z8fTkTW-oTAT-NY4@zatzit>
Content-Language: en-US
From: Ayush Singh <ayush@beagleboard.org>
In-Reply-To: <Z8fTkTW-oTAT-NY4@zatzit>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 3/5/25 10:01, David Gibson wrote:

> On Mon, Feb 24, 2025 at 03:39:41PM +0530, Ayush Singh wrote:
>> On 2/24/25 14:07, Geert Uytterhoeven wrote:
>>
>>> Hi Ayush,
>>>
>>> On Sat, 22 Feb 2025 at 21:14, Ayush Singh <ayush@beagleboard.org> wrote:
>>>> # Challenges
>>>>
>>>> ## Security
>>>>
>>>> The concerns regarding security seemed to show up in the other
>>>> proposals. There was a proposal to have a devicetree property to
>>>> allow/deny the application of overlays in some nodes, with default being
>>>> deny. Was it insufficient?
>>> This is the most important issue: using DT overlays, you can change
>>> about anything.  There is no protection yet to limit this to e.g. the
>>> expansion connectors on your board.
>>> This is what the various WIP "connector" abstractions are trying
>>> to solve.
>> Thanks for clarifying. However, as I mentioned above, there are usecases for
>> dynamic overlays outside of connectors. Specifically, for the usecase of
>> connecting random sensors to board pins. I do agree that any fairly well
>> specified connector should probably have it's own drivers rather than using
>> a generic userspace API.
> I'm not sure that's just due to an insuffuciently broad conception of
> what a "connector" might be.  Note that to justify a dynamic overlay
> interface specifically you need to have *both*
>    1) a need to update *anywhere* in the device tree and
>    2) to do so at runtime, under userspace control
>
> It's kind of hard to see why you'd need (2) in cases that don't at
> some physical level involve a "connector".. in which case (1) is hard
> to justify.
>
> How are these sensors being connected to random board pins?  If it's
> because those pins are exposed on some header, then it seems like it
> ought to fall within the definition of a connector.  If someone is
> just soldering onto them, it seems like an semi-permanent change that
> would be better handled at boot time.


I see. It seems my perception of connector was a bit too narrow. 
Certainly, treating the whole board header as a connector would 
certainly be a better solution, since it will also allow great control 
using a dedicated driver. Thanks for the insight.


Ayush Singh


