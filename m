Return-Path: <devicetree+bounces-281423-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6OKsLVzTxWnQCAUAu9opvQ
	(envelope-from <devicetree+bounces-281423-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 27 Mar 2026 01:46:20 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D4FF33D9A3
	for <lists+devicetree@lfdr.de>; Fri, 27 Mar 2026 01:46:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1C61A302617B
	for <lists+devicetree@lfdr.de>; Fri, 27 Mar 2026 00:46:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8A8A21E3DED;
	Fri, 27 Mar 2026 00:46:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="FNst0QM3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com [209.85.208.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F25CD19D891
	for <devicetree@vger.kernel.org>; Fri, 27 Mar 2026 00:46:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.208.46
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774572376; cv=pass; b=Yj907MyuAVuzoJdQow+Ec9srH10Ue8YP2olWT2ENIb4J2R1RqXKFQTMW8wSHykhP3waMxm2WXh2fwjaKih5XtlydIAJ+LPq+tuUN0zoSoG6mcT6kaS9jWXqDgDfh8xrOrguwAIc0Y4xfc73aYwhBJBzujwM7n/YZDvTp9BtfhaM=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774572376; c=relaxed/simple;
	bh=cIQcEwG19qRQ+raJI3sjifiU5GAjhmp03hspqWS+r0A=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=I3mKSMC7PYkEwgl527F0GJGQsk40VouTuYPXvchtSEe1RHtRhrkYSYuV+wcuAnZpFfHh5j5/1QspG/HfVesXm4kRn/7BwlGdn4qwtHSD3ykkjQnDU65VOU9l2XHVvRjqfdj3Oof1T7McSZz0h0h5gbI899vKPo3Ys8xuv2Csgl4=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=FNst0QM3; arc=pass smtp.client-ip=209.85.208.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-ed1-f46.google.com with SMTP id 4fb4d7f45d1cf-66a8242c1d8so5247a12.0
        for <devicetree@vger.kernel.org>; Thu, 26 Mar 2026 17:46:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1774572373; cv=none;
        d=google.com; s=arc-20240605;
        b=e+M3BGUSLtn1YEerasNaj1viRFeqCh5XV1BfxeYyGX4DVYFyRXnENDBhF/FlAFy05A
         nEx+Y+NQXQJtgWgF5bX33I2FQB5gzZCqwG1QP1KkHb0bnapCuKx1gYz0mUawFNbxroov
         e9vdEqrKFE1nFmT7mZG3b0rAVtSgsxGBS8yfCayWIYVtKB1Mo7WNuNkhQbPTbGOyMbvJ
         YpjwFMhLFf9zFA405GX51UwnNycQL5ka90e8TNhqwu3wk7ef8y6MLIdUk045lNQKJKSm
         bvYBLhuGLFMVsIHPiwgHrFS+H1lIsQ8B0vUVsFIqc92C/kT4iU4tbHDOwcktNtpXf2oU
         dp7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=cIQcEwG19qRQ+raJI3sjifiU5GAjhmp03hspqWS+r0A=;
        fh=tD2i2Lh+lbaBOsNxYTw/YT7UmXxWK0Isdc+UEQBkOck=;
        b=NLuCVrjTjSCrl0BYp0NaoEQSuxEI+gcU1uJcxp7RgANR/Ggo3fHe1a/yv06o7+gLvO
         s+p7b4rQ781IdBOR2KYm+US/F27wIdekTYWAktQVU2vn9Ybch2gHz0bXHIS1/4YW6JfQ
         lP+mWrXShHCh7wByLsUtnPV0aJaBgXCROE33jsFxV4xo43ryJGRELdR4PMcckPGaiY/+
         88sDjSbuv7hJad4rP29ljitlM58/mirblqXSMPK8WnT/94tYA5VGQO4Ndqo1Z4lMrcru
         XqhwKoDVlEMxPwt4rhw3yzSv20xRlr4DVrR8Aae9XqMdQL23duJxY8sTRgfcC5LpPRp9
         nThA==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20251104; t=1774572373; x=1775177173; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cIQcEwG19qRQ+raJI3sjifiU5GAjhmp03hspqWS+r0A=;
        b=FNst0QM3rW/lHkrijpTyvi+OtB8ghvipQLRDxjhIwjN4O33wOOg0pYIc6KeDaIYeVS
         ric6GJ1qHvS3+nwxmUwE+47yPMJ59ChObuCyv9c8h1lTHgoczZ8geY+uRHFipvCicDfk
         WRdFroXz2Qr3zm3/h8SUaRvAXQT4iACtU9X6G/+SmG8M5u5seUmEn3VF7nbL1uA+gT+a
         6/7JG/LIwysiiAc3j2KUCM2Mr36BXkjQQ9nDRkYEFCks9MKsGdedyYEyAhxuFcbrDhdi
         y9HuqqfBiUVLM4mu61yTSwBWFonH8fkBSIX5cRP1btqNfeiyxjkq5ASF8mViv2mIEnZw
         DKmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774572373; x=1775177173;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=cIQcEwG19qRQ+raJI3sjifiU5GAjhmp03hspqWS+r0A=;
        b=Qts1Xx9iPPwd9TH+l+YZ93ZsEzBkEl6iFHow6I7TlpFyngLJN0PQ4IqiQIxFgToewN
         gfE5oFSgZBjpVCQ7UU+7IcD1u3SxQJB+TFweI92u+aLQz1KzZpBSBIIZgCFnDhqX0vMl
         yBuohc59JzMRYgxItBuTRAmTwSSCKt5TNaKdNHHrO5MitiF0j3zG5rIJ0Oj1qS/1sGP+
         GLR4sujGjW9BhzK/4pArLpIAu4j9yKzePRcfUPrsRFyom/MqnMq7j7sQH9vOvIOr2KhZ
         Z/0YFHY1V8GPEpbfEfpO+4qHB9Er6iYqt7djLAPudM7UoAkwqvh76CRUaYOhsrBTXkTS
         ol5Q==
X-Forwarded-Encrypted: i=1; AJvYcCVUhkY9iNyxotA0SMu8mUQrIvDQflfc+S3lmspc79dIfQGr+qUxI+9cCL1AOEjHfANYIdphPPq7czwD@vger.kernel.org
X-Gm-Message-State: AOJu0YzFNrkuK5ekyYS0IoYi7E3zXw6imslh2pwZ43bboZn7NGg/Gqya
	Pw0sDL8+hF5ftXpey2YeVXA0jRg6Tq0Mq18m+II4ZnKQikzvGe0VvzHwVexirwi+yuceRSwZvNQ
	TzgGOzVErS1AqngJOaUU28xIwqaAip2tGdIA2DSfHmiNAbWZgNJvFjUOt
X-Gm-Gg: ATEYQzwKuRnyK6XBZ0tnMsvv5UOrvv/L9Zh+VCDNtLDS9k/i2h6zxJ/I96w+vWB52+f
	JEuOUeAruzr3gjJ5pS9JxsXzlEZIpQ8t7PqxaME5gO86Fyo9D/aRPbFiXul9ijKlFFKLTBAUm+G
	uSqYaIEi5Y8N9Bt0gj1RRNCb19y35hDv3iAbO8a5eXQTEj2lBHrWLpHWYMXcCVPnQv5xPy8II28
	CNt7+IuqCr+5nOaDbBWTf+ygaoYXBlTvq94mXeZ7D7lG9OSw8hLEuS2f1jHyyhpCup9wu+mVDeH
	gGlM72CrJB/N8eC7YP/nU73w7EyGzjL84HSUEAE/7JRrQ6TJAN1Qr/ZDeW6zZ31i4aAMEmkonA=
	=
X-Received: by 2002:a05:6402:324a:10b0:65a:1240:b8c4 with SMTP id
 4fb4d7f45d1cf-66b229d9837mr9623a12.3.1774572373052; Thu, 26 Mar 2026 17:46:13
 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <1774429690-129139-1-git-send-email-zaixiang.xu.dev@gmail.com>
 <1774429690-129139-3-git-send-email-zaixiang.xu.dev@gmail.com>
 <20260325-napping-turmoil-de37168fb072@spud> <09105b02-3d85-4808-ba0a-f3799787425a@roeck-us.net>
 <20260326-lullaby-elevator-3a3d25e9a6c0@spud> <20260326-opposing-footsie-33a0deb2ba90@spud>
 <ba8848a3-03f0-4113-8db4-d6dd46a57959@roeck-us.net> <20260327-clubbing-crushed-e73c4c994737@spud>
In-Reply-To: <20260327-clubbing-crushed-e73c4c994737@spud>
From: Roman Gushchin <kfree@google.com>
Date: Thu, 26 Mar 2026 17:46:01 -0700
X-Gm-Features: AQROBzBpAhGmdbxNeu0VGAT0ctGj0S3PX66_lNJpRl7fA0aff4bOxUfLoF_HXX4
Message-ID: <CADKH=+1EJFjPF+o3xB4XyrSDgEee-Bu0uGEmuakZoaGxwOBKtg@mail.gmail.com>
Subject: Re: [PATCH v4 2/4] dt-bindings: hwmon: Add Sensirion SHT30 series
To: Conor Dooley <conor@kernel.org>
Cc: Guenter Roeck <linux@roeck-us.net>, Zaixiang Xu <zaixiang.xu.dev@gmail.com>, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, linux-hwmon@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	R_DKIM_ALLOW(-0.20)[google.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[roeck-us.net,gmail.com,kernel.org,vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-281423-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[google.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kfree@google.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[9];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,mail.gmail.com:mid,intel.com:email,sashiko.dev:url]
X-Rspamd-Queue-Id: 1D4FF33D9A3
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hello,

The pseudo-commit message is intentional, Chris Mason initially
prompted it, and I'm honestly just using his format. The intention
here is to ensure the LLM reviews the correct commit and at least
understands what it's doing. Idk if it's really useful with Sashiko,
but it's there and hopefully not too distracting.

Re previous versions: it's not implemented yet, but I plan to add this
eventually.

Thanks!


On Thu, Mar 26, 2026 at 5:03=E2=80=AFPM Conor Dooley <conor@kernel.org> wro=
te:
>
> On Thu, Mar 26, 2026 at 04:55:39PM -0700, Guenter Roeck wrote:
> > On 3/26/26 10:45, Conor Dooley wrote:
> > > On Thu, Mar 26, 2026 at 05:42:30PM +0000, Conor Dooley wrote:
> > > > On Wed, Mar 25, 2026 at 06:05:22PM -0700, Guenter Roeck wrote:
> > > > > On 3/25/26 11:20, Conor Dooley wrote:
> > > > > > On Wed, Mar 25, 2026 at 05:08:08PM +0800, Zaixiang Xu wrote:
> > > > > > > Add YAML devicetree binding schema for Sensirion SHT30 series=
.
> > > > > > > Use fallback compatibles for compatible chips and add optiona=
l
> > > > > > > interrupts and vdd-supply properties.
> > > > > > >
> > > > > > > Reported-by: kernel test robot <lkp@intel.com>
> > > > > > > Closes: https://lore.kernel.org/r/202603212044.BRPaiz86-lkp@i=
ntel.com/
> > > > > >
> > > > > > The robot did not report that this binding was missing.
> > > > > > It also told you not to add these tags.
> > > > > >
> > > > > > You also ignored my and Krzysztof's reviews.
> > > > > >
> > > > > > NAK.
> > > > > >
> > > > >
> > > > > Maybe we should just point to AI feedback:
> > > > >
> > > > > https://sashiko.dev/#/patchset/1774429690-129139-1-git-send-email=
-zaixiang.xu.dev%40gmail.com
> > > > >
> > > > > and only get involved after AI does not report any problems.
> > > > >
> > > >
> > > > The presentation of info in that is weird, it creates a pseudo-comm=
it
> > > > message, and then goes on to talk about things that the pseudo-comm=
it
> > > > message has had culled.
> > >
> > > How good is this LLM stuff at figuring out if previous review feedbac=
k
> > > has been resolved? Or is it not capable of looking at earlier revisio=
ns?
> >
> >
> > Both are interesting questions. For the first one, I had noticed that, =
but
> > to me it seemed that the pseudo-commit message is an attempt to create =
a concise
> > version of the commit message, and I have not seen evidence that the la=
ter
> > comments did not also apply to the real commit message.
>
> Yeah, the comments did apply to the real commit message. I was just
> confusing to me to see what looked to me like a commit message not
> contain the info that was being referred to later on. I thought that the
> LLM was hallucinating the comments until I went back to this mail and
> realised the text was here.
>
> >
> > Anyway, copying Roman for feedback on both.
> >
> > Thanks,
> > Guenter
> >

