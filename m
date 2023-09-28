Return-Path: <devicetree+bounces-4173-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 537B37B1774
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 11:36:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 05A662817CF
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 09:36:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A167C341B4;
	Thu, 28 Sep 2023 09:36:31 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43BA631A83
	for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 09:36:30 +0000 (UTC)
Received: from smtp-out2.suse.de (smtp-out2.suse.de [IPv6:2001:67c:2178:6::1d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5F045122;
	Thu, 28 Sep 2023 02:36:28 -0700 (PDT)
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
	(No client certificate requested)
	by smtp-out2.suse.de (Postfix) with ESMTPS id ED21E1F88F;
	Thu, 28 Sep 2023 09:36:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1695893786; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=QHX4YnUFhw03++c0If6SuGdIj/sQMUaUI8+AzRNdDNU=;
	b=QpcWtozWmia1N2L+e2do27Se/Iq+Gw36qbVpoBsBAzwxyWPYl7i7WoxKI+q6Y+9wI1TnzQ
	MCjWajhSctwDOIanriw1+jdaMSadBFEGKjOWrL1Todcm2p3ouN6Z5GNrzrWGqmuYtbr4+s
	9pEN84jMdKvNT4mkhTRcPAlRaZL2YuY=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1695893786;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=QHX4YnUFhw03++c0If6SuGdIj/sQMUaUI8+AzRNdDNU=;
	b=0uwOXGgShEDZDgz01LVXRo4kihx103txiWOT7TyBYkuFV76NEDVr2MGpDam3deTfBs2pZ7
	nti1scvMOMBJjTAQ==
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
	(No client certificate requested)
	by imap2.suse-dmz.suse.de (Postfix) with ESMTPS id A1FF813581;
	Thu, 28 Sep 2023 09:36:26 +0000 (UTC)
Received: from dovecot-director2.suse.de ([192.168.254.65])
	by imap2.suse-dmz.suse.de with ESMTPSA
	id vMDoJBpJFWXucgAAMHmgww
	(envelope-from <aherrmann@suse.de>); Thu, 28 Sep 2023 09:36:26 +0000
Date: Thu, 28 Sep 2023 11:38:01 +0200
From: Andreas Herrmann <aherrmann@suse.de>
To: Eliza Balas <eliza.balas@analog.com>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Derek Kiernan <derek.kiernan@amd.com>,
	Dragan Cvetic <dragan.cvetic@amd.com>,
	Arnd Bergmann <arnd@arndb.de>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v2 0/2] Add support for ADI TDD Engine
Message-ID: <20230928093742.GA7895@alberich>
References: <20230928092804.22612-1-eliza.balas@analog.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230928092804.22612-1-eliza.balas@analog.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hi,

You've used an odd "To:" field in your E-Mail.
You might have to fix this in future mails.
Have fun.

On Thu, Sep 28, 2023 at 12:28:02PM +0300, Eliza Balas wrote:
> V1 -> V2:
>  * remove label in examples in bindings file
>  * add detailed description of the hardware in bindings file
>  * remove adi_axi_tdd_clk_disable function
>  * remove devm_add_action_or_reset, devm_clk_get, clk_prepare_enable
>    and use instead devm_clk_get_enabled
> 
> Eliza Balas (2):
>   dt-bindings: misc: adi,axi-tdd: Add device-tree binding for TDD engine
>   drivers: misc: adi-axi-tdd: Add TDD engine
> 
>  .../sysfs-bus-platform-drivers-adi-axi-tdd    | 158 ++++
>  .../devicetree/bindings/misc/adi,axi-tdd.yaml |  65 ++
>  MAINTAINERS                                   |   9 +
>  drivers/misc/Kconfig                          |  10 +
>  drivers/misc/Makefile                         |   1 +
>  drivers/misc/adi-axi-tdd.c                    | 780 ++++++++++++++++++
>  6 files changed, 1023 insertions(+)
>  create mode 100644 Documentation/ABI/testing/sysfs-bus-platform-drivers-adi-axi-tdd
>  create mode 100644 Documentation/devicetree/bindings/misc/adi,axi-tdd.yaml
>  create mode 100644 drivers/misc/adi-axi-tdd.c
> 
> -- 
> 2.25.1
> 

-- 
Regards,
Andreas

SUSE Software Solutions Germany GmbH
Frankenstrasse 146, 90461 Nürnberg, Germany
GF: Ivo Totev, Andrew McDonald, Werner Knoblich
(HRB 36809, AG Nürnberg)

