Return-Path: <devicetree+bounces-220786-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 969FCB9A6E9
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 17:01:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 25AD54E2426
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 14:59:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 91AC330BF70;
	Wed, 24 Sep 2025 14:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Pk3XV05/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com [209.85.214.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14F682E03E6
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 14:55:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758725753; cv=none; b=K+X9digfMUu9rJVOejgAcMRDKzWj+By+FFPH6btli357Q/T7c1DO8N73L0Gowewfu0QEOAiFsyVjqHWX7pyOxhksUDxACTRqkLjRUB9un9FAToueNnVg1vexC0xfhTH447st0y+f80XiaNhiT86SWW0xmba6E99/PJ/jAjC1vvk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758725753; c=relaxed/simple;
	bh=1bdm4ZwS+vnY4SEljyRMQtCEmwu0wpVnwkmS35goyks=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=i0nbVuT1E9e/T8hB6BUy7I7ykwdm03jqm3p8T9tOKNiYxOPA0rgO0PbowlmQcSKwVL2G3RFrvRxEtTT1PihR5KT8EL6ga9cqxotToTh9LB/Ja3i6VvcKmhrrNluoeQkiwP3s58VcOHyhkVGr/utvtoSz0FO2oVl8ziNkbiZFkG4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Pk3XV05/; arc=none smtp.client-ip=209.85.214.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f172.google.com with SMTP id d9443c01a7336-2698d47e776so51209865ad.1
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 07:55:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758725750; x=1759330550; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jtg/RW/ZQ2hPIrm+uMAg0L2Wfe97VEQrXZv2YdHCE9I=;
        b=Pk3XV05/0gZsasKG5lxzY1piM6pfZCiNjiSkFyEWgkvMDWWpBOJYPW9R/pZt/5JxuU
         jsCN3GHXD7notX9VVHXVUtUCgNma6nnSZxEaYUTJEYnTeXux5vOxC6nMniBNapo0/rf4
         r529bjHzHQK4FCcgTSPVQ6gf/NfNwdlCc9LdI5XSvetU2gP2NQrVu/j+B/gWImVbG6V7
         yIeT1Wp8ZW9rzXwt7foEfDKq8IHpa4/eghupT+r1nesa+3yThnJVKubA/j+oioE0ODJm
         GqDnI4vtC7bYTBynRMoLLwVsO7IzOKE4aH1bnEYz/XyvSW2FMRBp1FkNOExoVMUh5spI
         mH5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758725750; x=1759330550;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jtg/RW/ZQ2hPIrm+uMAg0L2Wfe97VEQrXZv2YdHCE9I=;
        b=doCOugcLwJO3rJ6wNsTB+0g1s8GweNzQEUj8ulMj6n9fT09U7H+zeDcvmIDDce0+6B
         sL1LbmwupCnzgTMt0jC8TYHtYD0xdABgfNQSid4sTq2+S9d/kuUuojbE9xSbQbAkgst+
         SI4Q5xmJnR8mtwMepHrX+drJR4Kp8Am7rxTDRC9h7RrfEHfe2MDIiWXApMbGYnsTDXRu
         7OB8VFxnDFxXrmh7wCoUJAi4OPfoD7xmhmQ7Zd1KPTEuosCJ9lW98ijoFYdWAwgViT0D
         5spNE8E01vGLKT7Aqoi6iYYAUyORMV0/ocW7mfeMUXLhZbeCWqfau/MSSA51CXEuJAfS
         XzhQ==
X-Forwarded-Encrypted: i=1; AJvYcCXmukSE+5zUKGH4N4dJGBhzlexRyjRsoPJFneUEMHoU1hIpVL6u6NGhBB6Pr0+eEEh8nH+wTCDBRIyl@vger.kernel.org
X-Gm-Message-State: AOJu0YzDIO7QV/27wBfZB9i2nEfm1uLuaBsYr5/OG2JX+Bmrlct3FaL0
	YoaovzrrPaaUhZFenQRyiVg76oMrIdhy3vwDLOlQt0SwP2dzbyJhlQC0
X-Gm-Gg: ASbGncsjjs6tSIBtG6+Phumsj6uPpV+Bcs1xJRvX4WmrMeHnAGtX6UEqDoBVF3T2q7U
	ttjFzia+wJNff3P/ShhsM5sOCbvRZlEqa7agvzyILCv4/CWvP/ahaWB/XRlNS8oVq9XMpct4SOb
	WjLHtz/WIM/TjPRYxPArhur4TH4NTqAIO9Y12zoA2EsnOoaHjzs/RnSBCDmqkakPHQKEwYei4Z0
	fi/pyUXmGVUeHqkWhKZbcszY72xkrbP6XH1OlDfdBObpEFvc+XN1S8WiXnGHrTJML8CX8+EMbTp
	SpjMrgdlRzGLt0iCRPPbD7H6pQp0dzQePDEkiD6Me9gY7KKZ2um3bodX9TftdXB4+PRTTQ+faPR
	evHtahRtL9qc4gpwtxodxTXaNYAbPJR/7oKE=
X-Google-Smtp-Source: AGHT+IGnenyE6frrx61hpk2H1dyCzynS+vL3sXDmbZJarOVCZ/cfik7xdg7mftRkCokyhtVFgoFyZA==
X-Received: by 2002:a17:902:c94f:b0:24c:7b94:2f87 with SMTP id d9443c01a7336-27ed49d0885mr199075ad.14.1758725750379;
        Wed, 24 Sep 2025 07:55:50 -0700 (PDT)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:da43:aeff:fecc:bfd5])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-26980053248sm194608665ad.15.2025.09.24.07.55.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 07:55:49 -0700 (PDT)
Sender: Guenter Roeck <groeck7@gmail.com>
Date: Wed, 24 Sep 2025 07:55:49 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: wenswang@yeah.net
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	jdelvare@suse.com, corbet@lwn.net, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-hwmon@vger.kernel.org,
	linux-doc@vger.kernel.org
Subject: Re: [PATCH v2 2/2] hwmon: add MP2925 and MP2929 driver
Message-ID: <360d3c4a-79ca-4482-a020-2cd477dccc54@roeck-us.net>
References: <20250918080349.1154140-1-wenswang@yeah.net>
 <20250918080603.1154497-1-wenswang@yeah.net>
 <20250918080603.1154497-2-wenswang@yeah.net>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250918080603.1154497-2-wenswang@yeah.net>

On Thu, Sep 18, 2025 at 04:06:03PM +0800, wenswang@yeah.net wrote:
> From: Wensheng Wang <wenswang@yeah.net>
> 
> Add support for MPS VR mp2925 and mp2929 controller. This driver exposes
> telemetry and limit value readings and writtings.
> 
> Signed-off-by: Wensheng Wang <wenswang@yeah.net>

Applied.

Thanks,
Guenter

