Return-Path: <devicetree+bounces-262557-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cH9qIy8Jg2lLgwMAu9opvQ
	(envelope-from <devicetree+bounces-262557-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 09:54:07 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 107E1E35A8
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 09:54:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id AAD6E302419D
	for <lists+devicetree@lfdr.de>; Wed,  4 Feb 2026 08:54:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 87A9839E167;
	Wed,  4 Feb 2026 08:54:00 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f177.google.com (mail-yw1-f177.google.com [209.85.128.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CB2A39C64E
	for <devicetree@vger.kernel.org>; Wed,  4 Feb 2026 08:53:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770195240; cv=none; b=UOWDwi+HjLkZcoPXm8h3Q4mPDOfKNknldyLpz3OlCvu+NcFL/ApxdgS0ycvYwH0FshnpQ+4Ga/pF3fMn6o6jUsFOI40We8nWuwVD5apQ9LeiKCkD2qL4uE8rC8h6L1t+4SXdDGmjZuUvdI6bRj88tgUW7rZx0plPriUPBqyoxn8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770195240; c=relaxed/simple;
	bh=QBTIySzQW54jDQMTjiweJUPBtTxPv9w65cNG8qDsU0w=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=KzKHZZyaob0VCFn1U1a7aqxjPKrfWR8UMUj+viPgkP0/4Qo+R0GT96Brx8ev6LDXFQVDa2BshHWAZysgt86byOl/TfJ8ZBXtoTwyJRQEGfYjNZ7oO9UVRf79N9nUCbZfGvH08yFO3cBq5j6/WDorH4NGX7ibaE0XuCZMAhylYyg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=debian.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.128.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=debian.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yw1-f177.google.com with SMTP id 00721157ae682-794d80febdaso34045987b3.3
        for <devicetree@vger.kernel.org>; Wed, 04 Feb 2026 00:53:59 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770195239; x=1770800039;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=QBTIySzQW54jDQMTjiweJUPBtTxPv9w65cNG8qDsU0w=;
        b=rk9pbqYsRl38xfgjhtYmRJEo6eyzZZtjXtbny6oKPMyUg7CWvjwF8VeB8B+gsGKH46
         oYGfNV+54wJq6Wkbgb/2yiTr2fuPCBFrFRKjVM7nP6rZHlnmGiBTBl3q5cs8aJBqTbq6
         hCXSHTo8TM4q76lZVO5RQiJ/IS4lgWrXiKKVrFAieV4YUvEQoglK9oehspAMxDV+arZO
         J64ccBywV5B6dUphE4NC6AEDeX3uRW3myQu2vhXryEVOg1+933wlf1567TSv2gecgFWi
         vOmo4NbhyekhDofHVwOU1KEeLhza4O8RB9YqRIcUABpu0vksrw7d861fHLRwJMPoBSxO
         bP+Q==
X-Forwarded-Encrypted: i=1; AJvYcCVAYFYBLp25NxFPubSgh62LVS23SandiAzPZXpySfiMEWZla7bO6YYVKCDapvYxYbMZnuk6TA098FgD@vger.kernel.org
X-Gm-Message-State: AOJu0Yx7ychVFSgDUD3Kvbx3c84opXCUNQiBl8yazVfQnScd4yDIfeXE
	6Ocwsq+cfZ9GASsgQJwDQXlqD6sGaNIMnyhc7/dj2qgLeiIYvL/ZbCEuS9gxvw==
X-Gm-Gg: AZuq6aJMmSj3GYEWCGnXRYoIpBqsJ/fTVXgu4/DctecQVaG7ygYCPyESiRDPlqsV+Z0
	tSKOuxXzD6VUcuufQselvT39uAbUXAYEXZuEa5jR6LqkfiingYA80bMF9NVkfz1zUSztSPI1iko
	L0qYtAmGkMOEDjRd2tOtmqfNeQYjrv5ZnXjqK+U+jX72IQqN2/tp97jyeYSzraR62r6M8i8OGL8
	LlYZH0/z57AbnHtYGXKO+vNENwxOu6IP5LMqtVqUnmWGSLroKYOHZIJYlOl9ALMoCDYGwm0jf9K
	3oKJMF9CYFVuz6lC0Av9XFDQ+iCTpyPn2n5rqVPV0D1gCBWf7T8hFz4YonXvZO+UE6Ug6Usi+sm
	//WOobdLKtxeLMYA4NV38cZDqvvy34DT49QYi0UvQ54uNg2nmM7nxi7CxURl0oNLfWfyOmuk8Km
	wqBIRW4MZM5FdqhIunLYJacGMlg+b2t+AKS6H5SgHW0A==
X-Received: by 2002:a05:690c:311:b0:794:ef16:725 with SMTP id 00721157ae682-794fe63f295mr20190847b3.10.1770195238965;
        Wed, 04 Feb 2026 00:53:58 -0800 (PST)
Received: from mail-yx1-f51.google.com (mail-yx1-f51.google.com. [74.125.224.51])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-794fee8615bsm16290867b3.4.2026.02.04.00.53.58
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Feb 2026 00:53:58 -0800 (PST)
Received: by mail-yx1-f51.google.com with SMTP id 956f58d0204a3-649d4690088so1548048d50.0
        for <devicetree@vger.kernel.org>; Wed, 04 Feb 2026 00:53:58 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUkvkaIvmqT+7Z8Ih+y63quYlcJ3/X4W0YBFgtPDQR+kCR/1mGZV2ZFwjbDzlDfBgJgDE1bxw5+cHG6@vger.kernel.org
X-Received: by 2002:a53:e229:0:b0:649:c2a5:c6ee with SMTP id
 956f58d0204a3-649db3331c7mr1579214d50.7.1770195238419; Wed, 04 Feb 2026
 00:53:58 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <6cd569ad19ae8efb5f4244b3aa185754@gmail.com> <sjczves57fwsxkaynczcso6h64ucqpppshh7woin5j7iwxtjjg@b6dwmnt42hn5>
In-Reply-To: <sjczves57fwsxkaynczcso6h64ucqpppshh7woin5j7iwxtjjg@b6dwmnt42hn5>
From: Roger Shimizu <rosh@debian.org>
Date: Wed, 4 Feb 2026 00:53:47 -0800
X-Gmail-Original-Message-ID: <CAEQ9gE=ZmJVzQPFUHYyg0nssZMpYwx8SZbWhGVJUyozqqF9BSg@mail.gmail.com>
X-Gm-Features: AZwV_QiI3HlbzFw2IIxgdgoWwv3E0HwP7wKXjtcddqgzuXWZ_1ffvG6pXAY1Yv0
Message-ID: <CAEQ9gE=ZmJVzQPFUHYyg0nssZMpYwx8SZbWhGVJUyozqqF9BSg@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: qcom: qcs6490: Add Thundercomm AI Mini PC G1 IoT
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.46 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-262557-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	MIME_TRACE(0.00)[0:+];
	DMARC_NA(0.00)[debian.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[rosh@debian.org,devicetree@vger.kernel.org];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-0.992];
	RCPT_COUNT_SEVEN(0.00)[9];
	R_DKIM_NA(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 107E1E35A8
X-Rspamd-Action: no action

On Tue, Feb 3, 2026 at 8:03=E2=80=AFPM Dmitry Baryshkov
<dmitry.baryshkov@oss.qualcomm.com> wrote:
>
> On Sat, Jan 31, 2026 at 02:31:25AM -0800, Roger Shimizu wrote:
> > Thundercomm AI MiniPC G1 IoT is single board computer with
> > AI capability based on Qualcomm QCS6490 platform.

Thanks Dmitry for the review!
I will send out the updated v2 by the end of this week.

-Roger

