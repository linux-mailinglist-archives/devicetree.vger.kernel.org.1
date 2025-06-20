Return-Path: <devicetree+bounces-187894-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AF38AE1A84
	for <lists+devicetree@lfdr.de>; Fri, 20 Jun 2025 14:07:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BA2CE3BA871
	for <lists+devicetree@lfdr.de>; Fri, 20 Jun 2025 12:06:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BE2FE28A72B;
	Fri, 20 Jun 2025 12:07:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="WciHImfz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D784C263F5B
	for <devicetree@vger.kernel.org>; Fri, 20 Jun 2025 12:07:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750421233; cv=none; b=Wpevq/EpmC22qbkv5mw1ovJSI2q84hqk7QEa+ZnTUUn/HjF6WmkUeNiOyp9m2u7NLD7LAW1QbJXrL4UHHfjwkNqWB7a3Um5iIK/J4yhPhZckhu0p0b0ujW3QYpdKkBpeDh1Z1QgzBvNgPef7O5cV/yyo3VZmYPSQ1kMW63Uo/Ow=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750421233; c=relaxed/simple;
	bh=EtRUcRnnvwKaEoPNvie571Q7bf0PXL/8PzpE64KHIRc=;
	h=Mime-Version:Content-Type:Date:Message-Id:Subject:From:To:Cc:
	 References:In-Reply-To; b=dOZ2mfyc81UpfZxXT9b78rMEQW90//3U8am3zyATWf4IBQamPsUoQlUjh1IG2BEYWYLrP03ZYpypULRbfIKsv8ARsdnqtOI5gSWlhdx+CrOa25WEO3tPY5nQZ3AZ6uhJ57tHXvRXfSNn5k5832j4Cu9kIGZw/zgih8v/JEzeuJI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=WciHImfz; arc=none smtp.client-ip=209.85.218.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-addcea380eeso305229266b.0
        for <devicetree@vger.kernel.org>; Fri, 20 Jun 2025 05:07:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1750421230; x=1751026030; darn=vger.kernel.org;
        h=in-reply-to:references:cc:to:from:subject:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lG/pp+YecK6TL9JZ8UqalWMy4MkbPjqfLN1AxeBtCuM=;
        b=WciHImfzRZ9V7PUwwHv+EbBSJ4I5zk+4c1fbrAYz4XgZWQo1EA3n930KwkG44k9iFN
         qqgzJ+31nPw9BXuYhfczmoTW7SdfwdGEkWr85hU7rhvp2lkPnAhTjD/l3MamAuUj5b3o
         62+JzinqVKDrNDyqUnuqPG5Nb4IFYLBqvVpHCRRxOEFgcpLq+rAS8WylhPMG9iCohAwX
         6fMxxMxf0RDFa5JrPt/3EGtvj+Zy6nl0+uW/yhtSPTXkJUfz1Zr+oVSVQhorIi483rds
         +QZ672h9jkLNFB2Tw7BEetn5BMNKKOyobCV5XBhRAWx3TwR1bhKO5Vh+6A4M5pP/LKhl
         CiKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750421230; x=1751026030;
        h=in-reply-to:references:cc:to:from:subject:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=lG/pp+YecK6TL9JZ8UqalWMy4MkbPjqfLN1AxeBtCuM=;
        b=UcRgMjAThIcAhTcPKXZwBb8FoF8CvCDbK3pOfOASNpDEVu3KgBlfPM9XZAorVoLRpL
         Vbf37kWkjIdCT1Xy4+QSc8QdYbqHaplkgThI6U44tIo6GE3mtFrbEBUxVNly+yrrXiVV
         Ivphm9vSFbn6NUttkcY5PbNi8uRYamnaCG25fkkA0s0ewMsBhJgULRmhESRtX9IoSoHy
         f11G2Oe/nGuRVj64OeNSYUAATqUlUcO7hnvv7tu9+E3s08FZ38hcCf1TeWvqjippAKLu
         ylc411HzTLCXPdC45a+KhVXdbaInFFA5Bjn109B/Y96R/B/6yidINUmRJrgXh1CSMEV+
         toNQ==
X-Forwarded-Encrypted: i=1; AJvYcCWBPMOc2OKLAL7m8JkrTlGXjcpJcXAPAvjNYAfCFHkiHyObdnDpSyhrBWrQVsQTbpaZ8RdajX2BmESG@vger.kernel.org
X-Gm-Message-State: AOJu0Ywq4AI975h4C2gUsS8rbXfkmS0AGWAjptOOjuoHgwrDvBcviCb+
	doVLHwD1xAVSPBHKF+TjEsoxTNJeqH+gpuncdQ1V+WllwXuBQCk60xCrd1rIMCf1KBg=
X-Gm-Gg: ASbGncuG3q/EUUyDzbke/3evn/gv/evIujAXnVXNh2gU7+7fEWha+a1Z5EKOFtYKtEw
	OZrCOUw/HrMqwS3qqxklVjOSC+UXm+vBiBUuKESx0nEC2s1SQURG4AZRoehB62bynIhD/vZUr4q
	We3PXNbQXVS6ZSVF/Mc2zmjo/yfzh+Stdeom6DuEQREt5ZBv1iTJeSyQc06xfLQoObzAQxgAqQb
	bKpZACfFIJJ+hK9gaTydmQ+lNdfShroDwonSyLBqRN1rscT/MhgCBeDclPUCNiS6rWTMauDWjH8
	EztYERuC9ZLlzSLani1cnw7SGTQoEZAeLetMcVuzohFPymsz5IcY0u4lpexal9lNMevc7+hZ8E9
	mM9Ojwtb0wfy0wUl7PSdw14hAwJQMZuI=
X-Google-Smtp-Source: AGHT+IF+wrgDWF2MbI5/b7UwRcOpVaso3voR+Zg/6OIhVMjvknso7RtJOSmtvATMmjnDhH2I7Iju4Q==
X-Received: by 2002:a17:907:7244:b0:adb:2bb2:ee2 with SMTP id a640c23a62f3a-ae057f1f567mr241816566b.41.1750421230048;
        Fri, 20 Jun 2025 05:07:10 -0700 (PDT)
Received: from localhost (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae054080a6csm154878566b.93.2025.06.20.05.07.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Jun 2025 05:07:09 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Fri, 20 Jun 2025 14:07:07 +0200
Message-Id: <DARCJEWMK6C2.21Y93IPCZO7NM@fairphone.com>
Subject: Re: [PATCH 3/3] fbdev/simplefb: Add support for interconnect paths
From: "Luca Weiss" <luca.weiss@fairphone.com>
To: "Thomas Zimmermann" <tzimmermann@suse.de>, "Hans de Goede"
 <hdegoede@redhat.com>, "Maarten Lankhorst"
 <maarten.lankhorst@linux.intel.com>, "Maxime Ripard" <mripard@kernel.org>,
 "David Airlie" <airlied@gmail.com>, "Simona Vetter" <simona@ffwll.ch>, "Rob
 Herring" <robh@kernel.org>, "Krzysztof Kozlowski" <krzk+dt@kernel.org>,
 "Conor Dooley" <conor+dt@kernel.org>, "Javier Martinez Canillas"
 <javierm@redhat.com>, "Helge Deller" <deller@gmx.de>
Cc: <linux-fbdev@vger.kernel.org>, <dri-devel@lists.freedesktop.org>,
 <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>
X-Mailer: aerc 0.20.1-0-g2ecb8770224a-dirty
References: <20250620-simple-drm-fb-icc-v1-0-d92142e8f74f@fairphone.com>
 <20250620-simple-drm-fb-icc-v1-3-d92142e8f74f@fairphone.com>
 <cf29862b-496b-4825-aa0f-493eb44838a5@suse.de>
 <DARBA03BEQA1.3KLHCBFNTVXKJ@fairphone.com>
 <4475251a-ede7-42d1-a95e-497e09beba0d@suse.de>
In-Reply-To: <4475251a-ede7-42d1-a95e-497e09beba0d@suse.de>

On Fri Jun 20, 2025 at 1:28 PM CEST, Thomas Zimmermann wrote:
> Hi
>
> Am 20.06.25 um 13:07 schrieb Luca Weiss:
>> Hi Thomas,
>>
>> On Fri Jun 20, 2025 at 1:02 PM CEST, Thomas Zimmermann wrote:
>>> Hi
>>>
>>> Am 20.06.25 um 12:31 schrieb Luca Weiss:
>>>> Some devices might require keeping an interconnect path alive so that
>>>> the framebuffer continues working. Add support for that by setting the
>>>> bandwidth requirements appropriately for all provided interconnect
>>>> paths.
>>>>
>>>> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
>>>> ---
>>>>    drivers/video/fbdev/simplefb.c | 83 +++++++++++++++++++++++++++++++=
+++++++++++
>>>>    1 file changed, 83 insertions(+)
>>>>
>>>> diff --git a/drivers/video/fbdev/simplefb.c b/drivers/video/fbdev/simp=
lefb.c
>>>> index be95fcddce4c8ca794826b805cd7dad2985bd637..ca73e079fd13550ddc779e=
84db80f7f9b743d074 100644
>>>> --- a/drivers/video/fbdev/simplefb.c
>>>> +++ b/drivers/video/fbdev/simplefb.c
>>>> @@ -27,6 +27,7 @@
>>>>    #include <linux/parser.h>
>>>>    #include <linux/pm_domain.h>
>>>>    #include <linux/regulator/consumer.h>
>>>> +#include <linux/interconnect.h>
>>> With alphabetical sorting:
>>>
>>> Reviewed-by: Thomas Zimmermann <tzimmermann@suse.de>
>> Thanks for the reviews!
>>
>> For both simpledrm.c and simplefb.c, the includes are not strictly
>> alphabetically sorted (1 mis-sort in simpledrm, 3 in simplefb), shall I
>> just try and slot it into the best fitting place, or make them sorted in
>> my patch? Or I can add a separate commit for each driver before to sort
>> them.
>>
>> Let me know!
>
> Best is to try to fit it into the <linux/*> block. In simpledrm, it's=20
> probably my mistake. Don't bother with sending an extra cleanup if you=20
> don't want to.

I was mostly asking whether this diff is okay as part of my patch (for
just adding <linux/interconnect.h>)

diff --git a/drivers/video/fbdev/simplefb.c b/drivers/video/fbdev/simplefb.=
c
index be95fcddce4c..f2efa4b51401 100644
--- a/drivers/video/fbdev/simplefb.c
+++ b/drivers/video/fbdev/simplefb.c
@@ -13,18 +13,19 @@
  */
=20
 #include <linux/aperture.h>
+#include <linux/clk.h>
 #include <linux/errno.h>
 #include <linux/fb.h>
+#include <linux/interconnect.h>
 #include <linux/io.h>
 #include <linux/module.h>
-#include <linux/platform_data/simplefb.h>
-#include <linux/platform_device.h>
-#include <linux/clk.h>
 #include <linux/of.h>
 #include <linux/of_address.h>
 #include <linux/of_clk.h>
 #include <linux/of_platform.h>
 #include <linux/parser.h>
+#include <linux/platform_data/simplefb.h>
+#include <linux/platform_device.h>
 #include <linux/pm_domain.h>
 #include <linux/regulator/consumer.h>
=20

Or if you want this churn to be a separate commit. Either way is fine
with me, just trying to figure out the preferences of this subsystem :)

Regards
Luca


