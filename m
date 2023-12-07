Return-Path: <devicetree+bounces-22889-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8467080921D
	for <lists+devicetree@lfdr.de>; Thu,  7 Dec 2023 21:16:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B5EF41C2094C
	for <lists+devicetree@lfdr.de>; Thu,  7 Dec 2023 20:16:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D970350250;
	Thu,  7 Dec 2023 20:16:03 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f47.google.com (mail-ot1-f47.google.com [209.85.210.47])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DCB541710;
	Thu,  7 Dec 2023 12:16:00 -0800 (PST)
Received: by mail-ot1-f47.google.com with SMTP id 46e09a7af769-6d9d1962bbbso884264a34.3;
        Thu, 07 Dec 2023 12:16:00 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701980160; x=1702584960;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5cQkDdnzepc6At1PDW9suBRg6vKVDLjVoo/BJeFLK1g=;
        b=Sd4rwBwKEW9DkhWkoNcxrhM+uHT3ZpKc2za/ehgHYyYH8cBStbtPZUZs8827KinQa2
         VBQrxhS58zzzCzAtVG0haU8YvR6qinqxdEFKr9iq7qPNzJmZpIv/CVxRb9ho1HCNZ/Qw
         /KnG2NKj9OWQsXd9Bm2SLoK/3BJcQ3UkS7D50Na0DMLmLSjDEDx9DDX1bf1Zd0dn6RYT
         JW8p9twOlof6r6bnjx1BzByFIm/RQrCStEJMEMbjpIoY6eSAyjgVRS5YmRKN7PQ2JpIK
         pEONR7zi4mYb+2oFeHU6NGY2eneQZvg4pk0XGIVp74TDJXaQZobrx4Og/h19EQy0X8t/
         6LYA==
X-Gm-Message-State: AOJu0Yz9RTuRPycT3sRYtbtqr30YkHI+Lh/f4mKr+9emrTsi85qsG0En
	6mq6lrrurVl6X8OEfYNSWV6fFMnQag==
X-Google-Smtp-Source: AGHT+IFa/J/UWM9ONWck/IBcMt0yTQGD1q3vexfwZIVq0OcVUIh+Jxedgy1LdSaEjeGZFUduSZ6QrA==
X-Received: by 2002:a9d:6d85:0:b0:6d8:7ffc:d878 with SMTP id x5-20020a9d6d85000000b006d87ffcd878mr2821370otp.16.1701980160090;
        Thu, 07 Dec 2023 12:16:00 -0800 (PST)
Received: from herring.priv (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id r17-20020a056830135100b006d98106678esm83811otq.18.2023.12.07.12.15.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Dec 2023 12:15:59 -0800 (PST)
Received: (nullmailer pid 3350935 invoked by uid 1000);
	Thu, 07 Dec 2023 20:15:58 -0000
Date: Thu, 7 Dec 2023 14:15:58 -0600
From: Rob Herring <robh@kernel.org>
To: Christophe Leroy <christophe.leroy@csgroup.eu>
Cc: Michael Ellerman <mpe@ellerman.id.au>, Nicholas Piggin <npiggin@gmail.com>, Frank Rowand <frowand.list@gmail.com>, linux-kernel@vger.kernel.org, linuxppc-dev@lists.ozlabs.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v1 4/4] powerpc: Stop using of_root
Message-ID: <20231207201558.GB3348285-robh@kernel.org>
References: <e6cf01d41502b15e688b6f5aa5c3b68c62b8ac64.1701878821.git.christophe.leroy@csgroup.eu>
 <b2f23f982ef414f0eaf7c55ccb79f30bec3c86cd.1701878821.git.christophe.leroy@csgroup.eu>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <b2f23f982ef414f0eaf7c55ccb79f30bec3c86cd.1701878821.git.christophe.leroy@csgroup.eu>

On Wed, Dec 06, 2023 at 05:13:35PM +0100, Christophe Leroy wrote:
> Replace all usages of of_root by of_find_node_by_path("/")
> 
> Signed-off-by: Christophe Leroy <christophe.leroy@csgroup.eu>
> ---
>  arch/powerpc/kernel/secure_boot.c        |  8 ++++++--
>  arch/powerpc/kexec/ranges.c              |  8 +++++---
>  arch/powerpc/mm/drmem.c                  | 10 +++++-----
>  arch/powerpc/mm/numa.c                   |  6 ++++--
>  arch/powerpc/platforms/52xx/efika.c      |  4 +++-
>  arch/powerpc/platforms/pasemi/pci.c      |  4 +++-
>  arch/powerpc/platforms/pseries/lparcfg.c |  6 +++++-
>  arch/powerpc/platforms/pseries/setup.c   | 12 +++++++++---
>  8 files changed, 40 insertions(+), 18 deletions(-)

Reviewed-by: Rob Herring <robh@kernel.org>

