Return-Path: <devicetree+bounces-8494-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CF83A7C85D3
	for <lists+devicetree@lfdr.de>; Fri, 13 Oct 2023 14:33:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id D7E50B208FE
	for <lists+devicetree@lfdr.de>; Fri, 13 Oct 2023 12:32:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 554F915C2;
	Fri, 13 Oct 2023 12:32:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="MarvLHah"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA35515E94;
	Fri, 13 Oct 2023 12:32:55 +0000 (UTC)
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com [IPv6:2a00:1450:4864:20::531])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 012FEBD;
	Fri, 13 Oct 2023 05:32:53 -0700 (PDT)
Received: by mail-ed1-x531.google.com with SMTP id 4fb4d7f45d1cf-53de8fc1ad8so3563884a12.0;
        Fri, 13 Oct 2023 05:32:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1697200372; x=1697805172; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=vyT3QmhAn6GJqY6054QmJlw/CJpCAFNbS1sbCVTYiog=;
        b=MarvLHahQ9YWJ+u28/n8ycyPyxiHM/qMIh95s5VomL6QE6vPybGfU+ifE/ARDMK32p
         aFK19qsbCz+9IYyArpD/wXjbCOLZGGIs1HgARFxouVhgE+immpoPCKrdkpWFahUPsG51
         ysi7zbD4OpjWto3fESpHX0ydYAr3Mnnxg6e7DAvCYN2EW3rM04yVwnIavHsNVKNiU0q8
         2fi9ISAuJohPQaNh6gqSm6Cn52wLWjXzEMQa4PgYKOKFyC3KEZEu2j/oL/kWPZrbu1v5
         O8D+XoVYwINmtTJcd/sZnhlS+4w6lu7t2XJXwjKXqQA71OmJY7aaq4qMg90rTJ5+axK2
         i/fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697200372; x=1697805172;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vyT3QmhAn6GJqY6054QmJlw/CJpCAFNbS1sbCVTYiog=;
        b=U41J0biBaKZ/Rjxs6Cmaq37F+6mzwOq+vAJ4/tshiO7fuzDKjp2a8f+fq27OE0PR4J
         2q9GP+VoC3KmTYIRlNjiMiyA5spMOxw7fS3/fmtPDcUY0PuqihAtb3kyG9KdI3km+8El
         Oq01wnlDHOaHe8pEzLZl4/j3R4WnMajvdGh4GFY1N7SFDgVfjm5PR9SZQekMIj1ljexN
         nO0BaijJH90QMb699V/GNP2jZeq5+yNwQP/HxlhVsbHOvxwV7q+ZcClTCqDqXEv9UvxL
         sZfD/JeJ2YmOJzODAnzKioSktHT/KHheBrEQLyc3wHItJsViFcA2e+RWWInIlh2Fh3Xh
         +7ZA==
X-Gm-Message-State: AOJu0YzPXRskactDMLkrHPwB4lW4kiDi3g5T0YAkMD/3Cjm7W6eZgq+2
	ZjdXTVo/jqtZAYzU8tmZnzo=
X-Google-Smtp-Source: AGHT+IGFkKZRQGK0puL+I4DnaFn3Vbu9t+Fk0zHGGFiTgn7HLoYZ0PsuTdt4+GPp7G/hK+RrGBQfIA==
X-Received: by 2002:a05:6402:4023:b0:53d:b2a5:465d with SMTP id d35-20020a056402402300b0053db2a5465dmr8584164eda.9.1697200372305;
        Fri, 13 Oct 2023 05:32:52 -0700 (PDT)
Received: from skbuf ([188.26.57.160])
        by smtp.gmail.com with ESMTPSA id b6-20020a056402138600b00536031525e5sm11380109edv.91.2023.10.13.05.32.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Oct 2023 05:32:52 -0700 (PDT)
Date: Fri, 13 Oct 2023 15:32:49 +0300
From: Vladimir Oltean <olteanv@gmail.com>
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: "David S. Miller" <davem@davemloft.net>, Andrew Lunn <andrew@lunn.ch>,
	Eric Dumazet <edumazet@google.com>,
	Florian Fainelli <f.fainelli@gmail.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Woojung Huh <woojung.huh@microchip.com>,
	Arun Ramadoss <arun.ramadoss@microchip.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>, kernel@pengutronix.de,
	linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
	UNGLinuxDriver@microchip.com,
	"Russell King (Oracle)" <linux@armlinux.org.uk>,
	devicetree@vger.kernel.org
Subject: Re: [PATCH net-next v3 2/7] net: dsa: microchip: Set unique MAC at
 startup for WoL support
Message-ID: <20231013123249.bhigwsezy6afb5qt@skbuf>
References: <20231013122405.3745475-1-o.rempel@pengutronix.de>
 <20231013122405.3745475-3-o.rempel@pengutronix.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231013122405.3745475-3-o.rempel@pengutronix.de>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Fri, Oct 13, 2023 at 02:24:00PM +0200, Oleksij Rempel wrote:
> Set a unique global MAC address for each switch on the network at system
> startup by syncing the switch's global MAC address with the Ethernet
> address of the DSA master interface. This is crucial for supporting
> Wake-on-LAN (WoL) functionality, as it requires a unique address for
> each switch.
> 
> Although the operation is performed only at system start and won't sync
> if the master Ethernet address changes dynamically, it lays the
> groundwork for WoL support by ensuring a unique MAC address for each
> switch.
> 
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> ---

Why not take the MAC address of the user port at ksz9477_set_wol() time,
and use the existing ksz_switch_macaddr_get() API that was just added so
that this use case could work?

