Return-Path: <devicetree+bounces-12205-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 38C0E7D8516
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 16:47:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E5E6B28201F
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 14:47:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 816F02EAFD;
	Thu, 26 Oct 2023 14:47:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="g1MX0cXs"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EE978829
	for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 14:47:32 +0000 (UTC)
Received: from mail-yw1-x1129.google.com (mail-yw1-x1129.google.com [IPv6:2607:f8b0:4864:20::1129])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CF630B9;
	Thu, 26 Oct 2023 07:47:31 -0700 (PDT)
Received: by mail-yw1-x1129.google.com with SMTP id 00721157ae682-5a84204e7aeso7528017b3.0;
        Thu, 26 Oct 2023 07:47:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1698331651; x=1698936451; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=34XhD9h+X+PBRCA88TNmWKJtn/0ttpsjK99oCCqQeo8=;
        b=g1MX0cXsH31KXiOAFnwBce5aFSb/eCbFn8VnLv9uoz8qZSSWYbd2pm0NTuKvGq7p2R
         ZJXZ3neobVq1qdM68+/QG7dgcnFYrCssPY9vE+VByKaSeLvVk2kvYoOdOk9SBFMz9TZV
         OQD2uSSVtS6/u/JOAevG9fOQlyF9cQHMX01IqnY+atAeguRonH7tBqDb1JPfdv4g3uuq
         +bzJNYBi5Y2oFeaaJV+WExD2g85pqNE+yoLMJc/0r5N55ef6Rqt83+xDkbSfHYVux2/q
         PMPgvjpAGycpgCtvuaRwVdFRuhVpMTVxznTjF6swj11IwDZQJV12dyqXOIeSO86QjJh2
         VisQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698331651; x=1698936451;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=34XhD9h+X+PBRCA88TNmWKJtn/0ttpsjK99oCCqQeo8=;
        b=ZfsiIKx7bM1tRdZ/d11KHnKhRsRFKkeJkkTh4KFJI2uY7R/8Q9UYU9SOqeEBpRlhAT
         MpLdNdddEX+wulSKBg8wtHGgyqtNcWKrw+mIy0BgQeQn4afQpYVLxjqh5nOp1SpBNc7H
         Nt2CrOsmZZdjbR0wP/2uRhPvKSOLjgBh2QP5Sd1ALt2TdKfsgVVKmzRA222JqKmhJI73
         65O+CDvdG+FQgM4VVgLSAMhuW1y7Rr4S5LBhq8hC2LJH8Ie4PkVqRjph2clJ7KPXyevs
         gTzU6f+uPyxe2KWinXNTea04PTDzdf3eOGkp8aAUNiTnoCvndNZHk93REIcBT3QN0r9z
         Lz6A==
X-Gm-Message-State: AOJu0YxynzURRiXMBFoUhxxKTfKxr6EC6PCiShCgo0Y4gTMQVUY8eo4N
	vo7VXfGsOa/liZUVdphl19g=
X-Google-Smtp-Source: AGHT+IExabIeF3e70s1QsfUW+O/3MXPLEEC6t+qN+jsLvgtoBdN/sLrH/kB7+QNai7yQP10+6+1QvQ==
X-Received: by 2002:a0d:e8cc:0:b0:5a7:ba09:52c7 with SMTP id r195-20020a0de8cc000000b005a7ba0952c7mr22180074ywe.11.1698331650963;
        Thu, 26 Oct 2023 07:47:30 -0700 (PDT)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
        by smtp.gmail.com with ESMTPSA id n189-20020a0de4c6000000b005777a2c356asm5979158ywe.65.2023.10.26.07.47.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Oct 2023 07:47:30 -0700 (PDT)
Sender: Guenter Roeck <groeck7@gmail.com>
Date: Thu, 26 Oct 2023 07:47:29 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Richard Leitner <richard.leitner@linux.dev>
Cc: Jean Delvare <jdelvare@suse.com>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org,
	linux-hwmon@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v2 2/2] dt-bindings: hwmon: ti,ina2xx: add ti,ina237
Message-ID: <d06c358a-1dfe-42e1-a342-d0dfb99d4825@roeck-us.net>
References: <20231026-ina237-v2-0-dec44811a3c9@linux.dev>
 <20231026-ina237-v2-2-dec44811a3c9@linux.dev>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231026-ina237-v2-2-dec44811a3c9@linux.dev>

On Thu, Oct 26, 2023 at 09:08:50AM +0200, Richard Leitner wrote:
> Add ti,ina237 binding to ti,ina2xx as they are very similar and may
> share the same properties.
> 
> Signed-off-by: Richard Leitner <richard.leitner@linux.dev>
> Acked-by: Conor Dooley <conor.dooley@microchip.com>

Applied.

Thanks,
Guenter

