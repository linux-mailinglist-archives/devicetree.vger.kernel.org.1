Return-Path: <devicetree+bounces-237799-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 81901C54685
	for <lists+devicetree@lfdr.de>; Wed, 12 Nov 2025 21:17:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 3257A4E4759
	for <lists+devicetree@lfdr.de>; Wed, 12 Nov 2025 20:09:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DE19E2BE05E;
	Wed, 12 Nov 2025 20:09:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Egm8LDRI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f181.google.com (mail-pl1-f181.google.com [209.85.214.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4615129BDB0
	for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 20:09:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762978167; cv=none; b=jo2dFwJth2v4WUYcqEkMfflzhhELYXr1RSHAk2DxZqpz91UM/l+W5jgACX/uIZSKx3/k2U51j1NKQEcy43OL/utr5icRwSp5CZmbcjdLr063OIzg4Ee11feNZ8gJ36UIj7ll20xjWrRgVelPayQ2S6T5kDh/Iy2CG4r5ZIAfa1U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762978167; c=relaxed/simple;
	bh=Er3oR6+PkdlXB4XEzW4SKH+apkSu3gszkGr+FTLFVQg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=R1zQXM8x3a0fHdAqxs6L8YkQXUhfRhP9MzCljurJyg2sMsuCmxjaR976ScUoxymrp8szRk68+iVzoNUBCJ7CPh6yMWnD2Ed0yRFmcgDAkG0ay5HTJLkLAcoWdkCgE9Gwzu/V/HFfaQ9wlND6kTqcNxNHxXfbeVRN29uU/2W3SzE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Egm8LDRI; arc=none smtp.client-ip=209.85.214.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f181.google.com with SMTP id d9443c01a7336-2984dfae0acso383055ad.0
        for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 12:09:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762978166; x=1763582966; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NmvW00LBZ50ailbcS9XTnsttPz016ujPos9JYGgCAT4=;
        b=Egm8LDRIswfqLLZ9M0ef0fAphIw5jfBH3MhXlu5EwvyG6nTXpcAf3k5+mBwpPvai91
         lOXgxYPCkv0B757PDkO8lZW8TpzpCWWcNHOEWLxuN2Bsjz87fQeRyxI3Q3EBvWwiGydJ
         Mt0TZKuaZjKFmVdHtfREesMcY4Ceq5jilGQ0HaWyFXfnHOWDAkTfUNyORJ3dscADIc24
         MeZ1lNDkQxd04itdd6XugVokwcow9zlnqDDKpCja7YsnfHq72ncVjTv1Ve2DBZ3tNyhm
         VhF6lrJyNqGqFlNaK9K9kuvfecWf1utpuooAX0NSZtNb2ujNVuWxYAPce7UcyIAxPGnQ
         NRKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762978166; x=1763582966;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=NmvW00LBZ50ailbcS9XTnsttPz016ujPos9JYGgCAT4=;
        b=J774/gjvvhNuviOey9HH1ySpUxXK/qbnFIOXLwNnTgn1zJ8vfFdPBzRFEnTUJQI1aV
         VAqQ35pFkKe1PVwmI6yXdSAoahg0MDhjzrjasF9SoG/RSx0Xx4YO1On/GRFl0vmIgwju
         JeZi79wuM/PA/jhdlATvL8EBj+LbTfqaeDLxR4lemvXfJtvuRZoKHSI+S9jkC+jhPZ+c
         sQS5Retv26i4pVXwBuN5iVcSbAZcbeJCzgvCHCU2fZaUx24gFZe0rhFQvdLzJ/276DX9
         D7g/I1vGIqRmE9suUA4f6DMDixGv8stXThvUwa46MnGjNBOiS5krJlAkK9OrgMFf+jQC
         JVTA==
X-Forwarded-Encrypted: i=1; AJvYcCWAmNcTPAqWylKmXSwRNYCAI+8capCPlAUuMu7Y0G1ASoYFOl8TsmM8zCUXCyQFXthHAsEK5EwESL2q@vger.kernel.org
X-Gm-Message-State: AOJu0YwEV++rVBUKPByaKxLKTWt9gJFcx785JTZnZ1wu0yGsIlAIuSic
	e2I0gryGoIjZCjJKK6UTfQOBcqrR660XAg3gchxPNFJorrrB90srpt/l
X-Gm-Gg: ASbGncul3H3kNfJDkUKn3FuBajmCW1kVLGYmrjJDhvUXKuOdZvYQKpvSjzT2jA9KnUP
	id+ohuxotTr2cbl/d1ydnxDuFt2aNXy7rVDdM2i2qPMOG7pzCSsWDkeIoJmMmXDQV9NaFwH2S3A
	ErBBf7zIunYugDwpawcIX+5PuYbfTwczJTWA44XlcyijVtqc4TscbV/WJRwfJsZhOClTrGfPSLd
	UrAiAv0ireoNylKFcFNQv3GHlw41CRr8nLwDYy5Qbk+urBYrU2rxJLVKkQGz2Su0WIU/M7whH6A
	l6xyjxR81FfLxEqYEDnrPL+8o3x3pucmtpZc6tV32WqgFELTeHV5SuqQ4kzto5IOo6HcsMH0a6T
	tVYs7g0jXRzywU0LxLwZwG5w+kCUSTl4mZ4SEZHg/q/XszzbNSHqbts/PVBqqR+CRNKUtOTngw7
	yt/E089aelVUm1
X-Google-Smtp-Source: AGHT+IFItecs7CrhbyEkdqRwaoHcd+iAO6zPDCEwo/LpsTI1JbO3EYuhCISQUIPuyHp328lDKaraXA==
X-Received: by 2002:a17:902:f70a:b0:290:c516:8c53 with SMTP id d9443c01a7336-2984eddf03dmr51151495ad.40.1762978165661;
        Wed, 12 Nov 2025 12:09:25 -0800 (PST)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:da43:aeff:fecc:bfd5])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2984dce80f3sm39020015ad.106.2025.11.12.12.09.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Nov 2025 12:09:24 -0800 (PST)
Sender: Guenter Roeck <groeck7@gmail.com>
Date: Wed, 12 Nov 2025 12:09:24 -0800
From: Guenter Roeck <linux@roeck-us.net>
To: Igor Reznichenko <igor@reznichenko.net>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	corbet@lwn.net, david.hunter.linux@gmail.com,
	devicetree@vger.kernel.org, linux-doc@vger.kernel.org,
	linux-hwmon@vger.kernel.org, linux-kernel@vger.kernel.org,
	skhan@linuxfoundation.org
Subject: Re: [PATCH v4 2/2] hwmon: Add TSC1641 I2C power monitor driver
Message-ID: <c02c8209-8f96-4ff7-992d-c81af54d5604@roeck-us.net>
References: <20251105201406.1210856-1-igor@reznichenko.net>
 <20251105201406.1210856-3-igor@reznichenko.net>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251105201406.1210856-3-igor@reznichenko.net>

On Wed, Nov 05, 2025 at 12:14:06PM -0800, Igor Reznichenko wrote:
> Add a driver for the ST Microelectronics TSC1641 16-bit high-precision
> power monitor. The driver supports reading bus voltage, current, power,
> and temperature. Sysfs attributes are exposed for shunt resistor and
> update interval. The driver integrates with the hwmon subsystem and
> supports optional ALERT pin polarity configuration.
> 
> Signed-off-by: Igor Reznichenko <igor@reznichenko.net>

Applied.

Thanks,
Guenter

