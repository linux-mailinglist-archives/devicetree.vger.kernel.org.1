Return-Path: <devicetree+bounces-234766-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E6F3C3084A
	for <lists+devicetree@lfdr.de>; Tue, 04 Nov 2025 11:32:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3EB993ADBC9
	for <lists+devicetree@lfdr.de>; Tue,  4 Nov 2025 10:28:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 06BC2315D57;
	Tue,  4 Nov 2025 10:28:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="lyc3oTic"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f180.google.com (mail-pg1-f180.google.com [209.85.215.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D2503115B5
	for <devicetree@vger.kernel.org>; Tue,  4 Nov 2025 10:28:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762252121; cv=none; b=NNVRtJWd5INCkeQmLF4swWZxSGjA7Z7YCMvmLToiRlzbC+Fd3J3I8Gj3TGkk9d+SedHoO5lgKOjVKU6aY/tPV8HF6JD3SWEHwXLWIrRSAKZfOg7Rs3Vdr3Ld06ylauwlU7+fyyVtCNq3BGJAs2ysItENDsRqw+0D/py0zSkNCo8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762252121; c=relaxed/simple;
	bh=05d5E9MY0aI85s5xlVR3wKl/xBD93gHT2h1F52y2vC0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=liBAf5DNbZZBGaUSJRNKWF2m/xXuIdjxjAy6xM1OdcU9mod8cKKetkueGo25bACJtCBJl54SowlMVMt6g7QlEoqRPoPQlyDJunGabDasR6WZ6sgkRpIY4tX89Yyadln1Sy7YOOMTk2PUItLwYx4TARqDq4DQgca3CltVoc2iSjM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=lyc3oTic; arc=none smtp.client-ip=209.85.215.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-pg1-f180.google.com with SMTP id 41be03b00d2f7-b98a619f020so2465697a12.2
        for <devicetree@vger.kernel.org>; Tue, 04 Nov 2025 02:28:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1762252120; x=1762856920; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uxrAHwkq6N30vPdNbtUVCZGt3V13VxNE34DEWAHquig=;
        b=lyc3oTicnUvduLEcq+ir6xs9w9OIk5mbU6FHdgZyVUZPYbW8L+u4HZv7rS7pJjDRnl
         rHdbgv6zE7uxJ//IVZozB/2yZEHA70BiVpcw+UvMeNIeqniaf3rY6y2EFNf5FnfDlBPh
         hmJneagOHzwkxT5+hk6hBjqvvLTndk6RBElWMUV8TbXoiYXJuhBjQv3F9hQ+Rb0esHKC
         +kbsJrnrUU9jN0Q3+jnxxl+NSqlE7kbPdwPn6ytRIp0dkljC9AuLDBMJurpRzeTBgK8d
         hPA3aS3jJ4zv41LZ8hrcgX7GeR6Ig9dq6tjWVomsZSg9BPHSjm6aPcepDHrAeT8kbuzW
         /EGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762252120; x=1762856920;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uxrAHwkq6N30vPdNbtUVCZGt3V13VxNE34DEWAHquig=;
        b=heigWUTitK7iFNbZuRtWzoug4JwLVmF5fKLHAUuBWGWo9bzNed1sSIqSJAtLc2o818
         Z9oYWEaMAKN2WgqY7yksMEiVg0SBRBCUZ4G5NEEh7+c73HXNkdupDm53gfcUcZsON2Wz
         6RYJz9uFWmPqiy1rMpcdAlISAZeat4K/g2lr9ifQX+E64yXernNBU0N39US6ymVj5zbF
         F0AAVK0zTbR3IMoOmgkA9imzzztFHMZm+RmNUIPOAe1SR/DPyNz5yrjrAEZsS4An5YOs
         ixEPJ2qvk2bXZ9z+H74KrGRejbaX0c22qsEa+EQmFPGFQEM28cMXfDSDqpFlhov2RaFl
         B5wg==
X-Forwarded-Encrypted: i=1; AJvYcCVa3hfo0tWEnPllxzVUEB4LxztfFz/7FttlOOZdDGH7UDPr8N/nk3pP2JEQcMrrGjL+6QeMuZAhvMDI@vger.kernel.org
X-Gm-Message-State: AOJu0YxY27KMoRcM19gops35HWmBSqSexkW72SB6UnVaFfNK2glQvVyF
	zGyMkXr7vxUtcNWY+/nlXEnhF4DyZbCPpCLa6ekzkYkbQSJ3y8LL02Gw9XCHmBm692tuW/AB0a1
	KV01wN82cY6XjThdj7r0UAJ26MI/9R9uHfkFG+Jax
X-Gm-Gg: ASbGncs8A37SxuqY7/Rf0dcuR8uliW31xC3jF/zzGy21ebevTR5W8vNY40ZFCksUpRp
	ug2bLv4w/MGt/UyZ++GTC92boDpDpZaq3UNCD1HuSKizS7uy8AiKL5yvotoifj9g99caH/GN5iQ
	v76cbjPBRaXu4GQD6/mU+D4ptNwMG2vdqcUpf/q0rIkhLZY9NYwcPAbof8lXnB2yruZxeG98B7H
	i4YuF2iTXjvO6P4FMdqmHAT8iA8klNSGB1tJG2kpb8hF6/5Wj6nvHYcgoG4DFRZ51Lfs/0=
X-Google-Smtp-Source: AGHT+IFtWCITnsqCpapCWEO1jfYZL/VVdrKbyDrZUYMRozSaaP1/me7PX/YPZoiJBaJe87Ul4D28jeHU7OTgnpSDtH8=
X-Received: by 2002:a05:6a20:549d:b0:341:5d9f:8007 with SMTP id
 adf61e73a8af0-348cd21b580mr22355749637.57.1762252119315; Tue, 04 Nov 2025
 02:28:39 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251017233459.2409975-1-royluo@google.com> <20251017233459.2409975-3-royluo@google.com>
 <20251030011659.bmgdry3wwf4kgjwv@synopsys.com> <CA+zupgxPYXCqew1548uwGx7=9u0b5oCwaXfP7F=FmqMR7a5bDw@mail.gmail.com>
 <2025110128-jailhouse-situated-22b1@gregkh>
In-Reply-To: <2025110128-jailhouse-situated-22b1@gregkh>
From: Roy Luo <royluo@google.com>
Date: Tue, 4 Nov 2025 18:28:02 +0800
X-Gm-Features: AWmQ_bnRE9DIQMXPkKDyyG2DDLmVc1ZLrXHYPMXtrjkVwdpu0f_b01Bk7DLUsug
Message-ID: <CA+zupgwOx5hADbHC8LbxkcsFBfgWyssqnRgE+YXy0umZmj6XNw@mail.gmail.com>
Subject: Re: [PATCH v4 2/2] usb: dwc3: Add Google Tensor SoC DWC3 glue driver
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Thinh Nguyen <Thinh.Nguyen@synopsys.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Peter Griffin <peter.griffin@linaro.org>, 
	=?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
	Tudor Ambarus <tudor.ambarus@linaro.org>, Joy Chakraborty <joychakr@google.com>, 
	Naveen Kumar <mnkumar@google.com>, Badhri Jagan Sridharan <badhri@google.com>, 
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	"linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>, 
	"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, 
	"linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sat, Nov 1, 2025 at 2:10=E2=80=AFPM Greg Kroah-Hartman
<gregkh@linuxfoundation.org> wrote:
>
> On Fri, Oct 31, 2025 at 05:49:28PM -0700, Roy Luo wrote:
> > > > +         dr_role !=3D DWC3_GCTL_PRTCAP_HOST) {
> > > > +             dev_warn(google->dev, "spurious pme irq %d, hibernati=
on %d, dr_role %u\n",
> > > > +                      irq, google->is_hibernation, dr_role);
> > >
> > > Should we limit this print and do we need this to be dev_warn? It may=
 be
> > > noisy wouldn't it.
> >
> > Ack, will make it WARN_ONCE in the next version.
>
> So you really want to panic your system if this happens (remember, the
> HUGE majority of Linux systems run with panic-on-warn enabled)?
>
> Please do not, handle the issue, dump a message to the log if you really
> need to, and move on, don't crash.
>
> thanks,
>
> greg k-h

Thanks for pointing this out, I overlooked the panic-on-warn scenario.
This case is actually very rare, I haven't seen this on the field and I
feel it does no harm to the system even it it were to happen, having a
debug log should still be useful if we were to debug anything specific
to this interrupt. I will make it dev_dbg.

Thanks,
Roy Luo

