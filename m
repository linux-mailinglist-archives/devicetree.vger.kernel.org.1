Return-Path: <devicetree+bounces-216499-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 46E7AB55031
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 16:01:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0A10216BDC3
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 14:01:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5AEDE1E32B7;
	Fri, 12 Sep 2025 14:01:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="F+4ovGJa"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4220153BD9
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 14:01:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757685707; cv=none; b=G0PmmgKxchkbZSMOQteXmVrAOWlA0FvQMzWVMAxrWfRez+PwaYJnQtNdutejCPBzV/jqDJUxFCsDCAlPxd9f2K3Zix4LuAojdVnt5K8X5hOavV4nBOznZXkqQJM4ighBQPfpZ/CHKHYOJVTIC9tNJFUI7kXkf+AMVqSdxfrESrI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757685707; c=relaxed/simple;
	bh=PRjCguMUk1s7Xp+w5iYJEY/+KMZLBNSqYFI/vEqfPmk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=nPCXzEDY0s8UAkqLGZ6Yoq9yw5lpULIO4KaFHrdQiWhTQ3ZJiVgNvFnnUnyh5Z/G2Ti4p7TSmEX1BmK35dNswMz35hrdMBjb/0THfZ+y4r36SLQhM8NSbkO2D4QQEFMV7iikHAcnubNlsuxRBd/xavx06qx8VHKCRY4K9v3eHJU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=F+4ovGJa; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1757685705;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=MqqpI2kMloNbQrwtAbrBDd+hBQn+g4T03pkyyFvQVUY=;
	b=F+4ovGJan0iaCetkwitlixngiGIh84678iTUx/FuzGXNoqRZZM0VUB3PqzoORqoqzzyJ37
	+T+BoMY9XSKmEFvvQ7kmVEZqXV+SL328lnBQFcT1NxR0IoDWNHPa0+2ErL6z/xlFGhrGZe
	a44dM2RakjhhGnp0tgPU109oe/PJSBw=
Received: from mail-ot1-f71.google.com (mail-ot1-f71.google.com
 [209.85.210.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-391-e1P6GP-5OXq-vAz_9VO0Zg-1; Fri, 12 Sep 2025 10:01:43 -0400
X-MC-Unique: e1P6GP-5OXq-vAz_9VO0Zg-1
X-Mimecast-MFC-AGG-ID: e1P6GP-5OXq-vAz_9VO0Zg_1757685703
Received: by mail-ot1-f71.google.com with SMTP id 46e09a7af769-751415c4a2cso3103837a34.1
        for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 07:01:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757685703; x=1758290503;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MqqpI2kMloNbQrwtAbrBDd+hBQn+g4T03pkyyFvQVUY=;
        b=xUNdTvcv2zDWE3l3AUcVX1Qqu9FlF/vlBbZuPsB8MUZdiM0qX+cGi6MQTZBQW3cu9C
         rTgEP1BeaBXuca/GLne/XFEIJxolNp3BLalNSZPOGKogVw+qEkVmIiRzFluJOo+6djg5
         TPq5QWjpiKClg3A2gToZpSDJSoSFAg8GM6xBp6TGvufTKvQ0WOBIDKOhFBBLshGpNbpA
         jXZf5VHBV1faK2I9rWmuY35bzOabok+QWzrFOkaafK0SJODDx9CzPtioJdBNUVNy/14F
         DETTL1gZsVUXkWQShytBRJZPMiQKWWWcvq1Y+cP9GLpG0/xCn+YtvS6+UYSLeyVuZQhl
         zY4A==
X-Forwarded-Encrypted: i=1; AJvYcCWuI3cWT7+DPg6yshkekx8H+YNMTFO02llFhegQOFRbxiJv42Pwduhf06xAaUY+fawhj3LCq0HTQcr/@vger.kernel.org
X-Gm-Message-State: AOJu0Ywm1JsJDB2lsiWR9SE+Gp/0rUXoOYuJ99GrTynDemUbPo4EASqo
	X1GpJjG39gxo6PkEUMyWDbBIWN8NTP8dY0giWGko1+xqgWBd75m8K9BzXcCLEWghamnNcYOfDlx
	dYxurFodFsQtc/31IrUBWXCkawRpmRRfAw6F98PG+6RszsPj8Fb/qHAmcMkptSB0=
X-Gm-Gg: ASbGncsrHth2ouTw/twRnufilMDs7jXDpP1JsROZpo584CctmQCFZTDC8vaQ7G4bEeO
	N4EaKDsoj2vIEePsna23+3GA6p4O5c5WqYiqb4kULG804Sng2t9ZN+TeCzvLsilLKHJ3y647SAs
	TMb2Zpiw847d2InNePxjMioLQXiGo3maKUv9SvWDrbulxUsNnNEyuiRAGGjHADDngGcR1kXzEuu
	pZ/1LE46VMTO5/Im++FqiUKpRV0sz458AhURrw13rGfCt0aKbddg3P+pQ9GOXpLRSE9xCE9Dfg6
	8NXVPXhQWIO9o/qP080M4UEJtRfAkPemkbwYksNiLccf6fOLFfQY5DDyInnlUgePOaXSSRuOM36
	hyI+XuzHUUy5AvK7LnP5ZzF3QDanoaA==
X-Received: by 2002:a05:6830:921:b0:749:32a:6e79 with SMTP id 46e09a7af769-75355ac0c40mr1629152a34.29.1757685702750;
        Fri, 12 Sep 2025 07:01:42 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE5yxEH3wh5uzqiZ9fHV5ltsysfaNN7LLcUgGKgcfhcmP2GCkP3kLrFAt6qiJu3nESHP/mhlA==
X-Received: by 2002:a05:6830:921:b0:749:32a:6e79 with SMTP id 46e09a7af769-75355ac0c40mr1629088a34.29.1757685702145;
        Fri, 12 Sep 2025 07:01:42 -0700 (PDT)
Received: from redhat.com (c-73-183-52-120.hsd1.pa.comcast.net. [73.183.52.120])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4b639de9a69sm24487811cf.46.2025.09.12.07.01.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Sep 2025 07:01:41 -0700 (PDT)
Date: Fri, 12 Sep 2025 10:01:37 -0400
From: Brian Masney <bmasney@redhat.com>
To: Peng Fan <peng.fan@nxp.com>
Cc: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Sudeep Holla <sudeep.holla@arm.com>,
	Cristian Marussi <cristian.marussi@arm.com>,
	Marco Felsch <m.felsch@pengutronix.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Dan Carpenter <dan.carpenter@linaro.org>,
	Geert Uytterhoeven <geert@linux-m68k.org>,
	linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org,
	arm-scmi@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH v3 2/5] clk: Introduce clk_hw_set_spread_spectrum
Message-ID: <aMQnwU3UA5xe-Eou@redhat.com>
References: <20250912-clk-ssc-version1-v3-0-fd1e07476ba1@nxp.com>
 <20250912-clk-ssc-version1-v3-2-fd1e07476ba1@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250912-clk-ssc-version1-v3-2-fd1e07476ba1@nxp.com>
User-Agent: Mutt/2.2.14 (2025-02-20)

On Fri, Sep 12, 2025 at 11:35:51AM +0800, Peng Fan wrote:
> Add clk_hw_set_spread_spectrum to configure a clock to enable spread
> spectrum feature. set_spread_spectrum ops is added for clk drivers to
> have their own hardware specific implementation.
> 
> Signed-off-by: Peng Fan <peng.fan@nxp.com>

Reviewed-by: Brian Masney <bmasney@redhat.com>


