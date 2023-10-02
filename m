Return-Path: <devicetree+bounces-5210-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B1037B59F5
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 20:24:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sy.mirrors.kernel.org (Postfix) with ESMTP id 897E7B20E54
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 18:24:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AF8891EA85;
	Mon,  2 Oct 2023 18:24:07 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C28B11EA7D
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 18:24:05 +0000 (UTC)
Received: from mail.hugovil.com (mail.hugovil.com [162.243.120.170])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EFB089B;
	Mon,  2 Oct 2023 11:24:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=hugovil.com
	; s=x; h=Subject:Content-Transfer-Encoding:Mime-Version:Message-Id:Cc:To:From
	:Date:subject:date:message-id:reply-to;
	bh=1kiq0IZ5yK6WvQJKrWN8/eAGgai0KqwTm03zZ8NWGHg=; b=khGK/OQDQyTgFaKrpJiNh2fIWG
	z+eLlpMMTWtMSCM3OAGE6OLC+odEVxCtfpfY6zHSIM20rwltJx3kcZ+44ljWTxJ27f8SbiAa+p6ZB
	mj8TKVY0aSizb+uQCYttguq9ZdwOO6wsYJZ1u1GUhdfUAYX5i8/jkW26FS0jIiebJs5c=;
Received: from modemcable168.174-80-70.mc.videotron.ca ([70.80.174.168]:44730 helo=pettiford)
	by mail.hugovil.com with esmtpa (Exim 4.92)
	(envelope-from <hugo@hugovil.com>)
	id 1qnNaI-0003vj-1R; Mon, 02 Oct 2023 14:23:58 -0400
Date: Mon, 2 Oct 2023 14:23:57 -0400
From: Hugo Villeneuve <hugo@hugovil.com>
To: Rob Herring <robh@kernel.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley
 <conor+dt@kernel.org>, Hugo Villeneuve <hvilleneuve@dimonoff.com>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Message-Id: <20231002142357.b6f06669a1585566f180de71@hugovil.com>
In-Reply-To: <20231002165052.GA1915589-robh@kernel.org>
References: <20230928190259.3497563-1-hugo@hugovil.com>
	<20231002165052.GA1915589-robh@kernel.org>
X-Mailer: Sylpheed 3.8.0beta1 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-SA-Exim-Connect-IP: 70.80.174.168
X-SA-Exim-Mail-From: hugo@hugovil.com
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net
X-Spam-Level: 
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,SPF_HELO_PASS,
	SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
Subject: Re: [PATCH] docs: dt: writing-schema: add example for multiple
 DT_SCHEMA_FILES
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on mail.hugovil.com)

On Mon, 2 Oct 2023 11:50:52 -0500
Rob Herring <robh@kernel.org> wrote:

> On Thu, Sep 28, 2023 at 03:02:59PM -0400, Hugo Villeneuve wrote:
> > From: Hugo Villeneuve <hvilleneuve@dimonoff.com>
> > 
> > Variable DT_SCHEMA_FILES can specify multiple files, but the
> > documentation does not indicate how to do it. Each entry needs to be
> > separated by a column symbol ':'.
> > 
> > Add an example to make it more obvious how to specify multiple
> > DT_SCHEMA_FILES.
> > 
> > Signed-off-by: Hugo Villeneuve <hvilleneuve@dimonoff.com>
> > ---
> >  Documentation/devicetree/bindings/writing-schema.rst | 4 +++-
> >  1 file changed, 3 insertions(+), 1 deletion(-)
> > 
> > diff --git a/Documentation/devicetree/bindings/writing-schema.rst b/Documentation/devicetree/bindings/writing-schema.rst
> > index 4a381d20f2b4..a500d3c2e12e 100644
> > --- a/Documentation/devicetree/bindings/writing-schema.rst
> > +++ b/Documentation/devicetree/bindings/writing-schema.rst
> > @@ -159,11 +159,13 @@ It is possible to run both in a single command::
> >      make dt_binding_check dtbs_check
> >  
> >  It is also possible to run checks with a subset of matching schema files by
> > -setting the ``DT_SCHEMA_FILES`` variable to a specific schema file or pattern.
> > +setting the ``DT_SCHEMA_FILES`` variable to a specific schema file, multiple
> > +schema files or pattern.
> 
> And multiple patterns. I would say: ... to 1 or more specific schema 
> files or patterns (partial match of a fixed string). Each file or 
> pattern should be separated by ':'.

Hi Rob,
makes sense also for patterns, I did not think of that.

Will send a V2 with these changes.

Thank you,
Hugo.


> 
> >  
> >  ::
> >  
> >      make dt_binding_check DT_SCHEMA_FILES=trivial-devices.yaml
> > +    make dt_binding_check DT_SCHEMA_FILES=trivial-devices.yaml:rtc.yaml
> >      make dt_binding_check DT_SCHEMA_FILES=/gpio/
> >      make dtbs_check DT_SCHEMA_FILES=trivial-devices.yaml
> >  
> > 
> > base-commit: 633b47cb009d09dc8f4ba9cdb3a0ca138809c7c7
> > -- 
> > 2.30.2
> > 
> 

