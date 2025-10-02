Return-Path: <devicetree+bounces-223472-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EEBABB57DA
	for <lists+devicetree@lfdr.de>; Thu, 02 Oct 2025 23:38:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 091E94E3F5A
	for <lists+devicetree@lfdr.de>; Thu,  2 Oct 2025 21:38:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 77A65271469;
	Thu,  2 Oct 2025 21:38:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="AkmelcSG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f171.google.com (mail-pf1-f171.google.com [209.85.210.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E1731A9FB5
	for <devicetree@vger.kernel.org>; Thu,  2 Oct 2025 21:38:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759441109; cv=none; b=YaHZ1xHqaaoZO37a8/qrp/RksVCBuRKCKsr6Y6gOBaiVUAJCyUeLrXiB1obmDm9EFK6kJ+lL4ytDg/Zq8e0tlcR0z7TnrpQtEFj0Z0Jme3jezAkXKh9ScM+nbJIHW0MVCG9tbFNzkf2P4p4Sxql4SyYOKoS/PIoIHfywqFFJMF0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759441109; c=relaxed/simple;
	bh=9dF0uJ3ISA22smG2brOHKcN/I7pK9c344S34aWAoh5g=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=reR+JwoCiYyY9h9nF2qLflDIdqiSIzgEGtkWN/Ub7sX9OsQe+9TOYrNx6GBNE5KvVn2cTKvgRN3xkiF8xuc1ejh0k6740Uk+4vVDcENuqgy4D9GvGh571k5kDPEmYlWZuTPaJ/8VKFdgRanwj5xGGEghWJg7b5yesEyr3tQtORc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=AkmelcSG; arc=none smtp.client-ip=209.85.210.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f171.google.com with SMTP id d2e1a72fcca58-77f67ba775aso2226940b3a.3
        for <devicetree@vger.kernel.org>; Thu, 02 Oct 2025 14:38:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759441107; x=1760045907; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DIgw2TUDYPujfob1ItVYazOFg+arl5pUESpq99Cor8Y=;
        b=AkmelcSGRu3932uTOYGDJEADP0HTBJOxNAfPgccn2+o6RdZ8YtVXo0CDAzlZ14Xvc2
         XZRbfX1YLFNG48memWUdjuYGcp/m2hKt5GytLNmIE+6OWaYfNcFLNHYPNsbWCCrHkX1q
         7criSdxCPrOUEp7L+0htUYmfrPb12WwUa9VBwMNXYCvfZDOUCaHI+PC5DTVgl4A0tap+
         jsqTkFS+UlSVvD9QVgyoHlbVKTvKrP5u4xlqqJ+DoGjrgvRZPrkwtTfgrTjOa/WTpVv7
         MIO2+lX9rwFJR9N1iNveYowQDWut6JvP9PUIOcxvCzkKtqEstcQrKk8PXjDm0/Jhokrc
         2sxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759441107; x=1760045907;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DIgw2TUDYPujfob1ItVYazOFg+arl5pUESpq99Cor8Y=;
        b=T4WlkP2A9SQO3gjbGLTy0SSu4gsYcxgsbq+tazdIQGN2vbIspXRI2HEpmvn0mk5thD
         2kHrg8uASyCG+nSeoWsd4EpTufdqqEpkQwdBL8fanAFvnxn2W+r3M8Zmz4IT2ZbXObkf
         58sClolbwWlZRm9n9uG/Vorh4FwPsvC5pe28MW2jwICYOHhgLzVeeJoA7NtXGChyctR4
         0C0gfKuxjCTNYcjbl+969ndKm0YGjmx57K86Sb1TiB42m0I8To9YZ5M7ENi79EYEkFkL
         SoqBbouscrFLYBJstn0qR7o9/xfUuZeswjnSVPv3ZiO2s/QYDNNXCjgbXoZoHqIlGffX
         aOYw==
X-Forwarded-Encrypted: i=1; AJvYcCWaCEXLnWLmDDEJqXggMuU/3JAMlyBM3h3/uMT3XsDBIlUGNXk0wsV2tYsKhtQSwlaWOO532ZjMVGlW@vger.kernel.org
X-Gm-Message-State: AOJu0YwyQK1pJZrWMulQMiE4foO9uF2Y8KJfpW5onO9Ur0GZardqTTIA
	/D1PoAEaTWhSxlCwHdfic2XCaBVC8fCyH2l6FsdHvGqamXPuG2QYHqRI
X-Gm-Gg: ASbGnctiogH7SLb3hwqYdHWiT2ITH8LeRjzC3JlacPPmco6MUn7znKJbJLS40cQi1yB
	EKMG70RuIBZYMbxHwHrSaX6zbUpnLmEn+nNYfWQk9pZo7l+600F/eFLp+CcoU7IwPNKJBcCN3Hc
	tKWI/im6q0iZUxXsWTY7rUZov6eMFj23rULvAu6tc7RPpDtDCher2X7dJzl/HJXElq8bnVPlvQ+
	BUh3AH37071WmqaUYTRvmlxisBFkr5G9w+axC+E/jNNUtokYdHWfZ+cBmwp1t5a5JJNiuNYMz+H
	bH/2eZPn4o+cLPb1b/nZ82HNbsyqH3y0kUihFxqDbfY65OgtRGM6QMlgsjwtchwQslv+dbIHd2K
	9eTOxyGh5SfKk/WuUa2s+nKEcBHJ+6q3E5muTKHsX9zjXFwk+ZfNEkWWREZU=
X-Google-Smtp-Source: AGHT+IHKI+feEMtSNCRgXeWWSvyIHg/eMcVz9KANAAoF8cg8/wBIuazCOx9v2nwjg3cKvHoW9MEgFg==
X-Received: by 2002:a05:6a20:12c9:b0:263:1c48:912f with SMTP id adf61e73a8af0-32b61dfb34emr1222197637.12.1759441107306;
        Thu, 02 Oct 2025 14:38:27 -0700 (PDT)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:da43:aeff:fecc:bfd5])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-78b02074549sm3020231b3a.76.2025.10.02.14.38.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Oct 2025 14:38:26 -0700 (PDT)
Sender: Guenter Roeck <groeck7@gmail.com>
Date: Thu, 2 Oct 2025 14:38:26 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Eddie James <eajames@linux.ibm.com>
Cc: linux-hwmon@vger.kernel.org, linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-aspeed@lists.ozlabs.org, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, andrew@codeconstruct.com.au, joel@jms.id.au,
	chanh@os.amperecomputing.com, jic23@kernel.org,
	dlechner@baylibre.com, nuno.sa@analog.com, andy@kernel.org
Subject: Re: [PATCH v7 RESEND 5/7] dt-bindings: hwmon: max31790: Use
 addressed fan nodes
Message-ID: <c7c23305-d53a-40e1-a783-9ea8598c96d0@roeck-us.net>
References: <20251001144441.310950-1-eajames@linux.ibm.com>
 <20251001144441.310950-6-eajames@linux.ibm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251001144441.310950-6-eajames@linux.ibm.com>

On Wed, Oct 01, 2025 at 09:44:39AM -0500, Eddie James wrote:
> Since fan properties can include reg, the fan controller should be
> able to specify address-cells and size-cells properties and use
> an addressed fan child node.
> 
> Signed-off-by: Eddie James <eajames@linux.ibm.com>
> Reviewed-by: Rob Herring (Arm) <robh@kernel.org>

Applied.

Thanks,
Guenter

