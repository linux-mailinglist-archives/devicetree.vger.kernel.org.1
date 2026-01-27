Return-Path: <devicetree+bounces-259989-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +OFBOYnZeGmwtgEAu9opvQ
	(envelope-from <devicetree+bounces-259989-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 16:28:09 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CE9196B00
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 16:28:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id B957130E2648
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 15:19:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7D26923E23C;
	Tue, 27 Jan 2026 15:19:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="UpuPk5bm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dl1-f41.google.com (mail-dl1-f41.google.com [74.125.82.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BFE1346AC1
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 15:19:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769527155; cv=none; b=YDZ1O+XtJwZLAwOQyKcZtMd1GBHZNI5Gg6QjC2iaMfXHdyypc0l5HXQZyD+vxRr8d1YzLjJXZ6hKDbtyqlS01zLS0lSKNDOrtk9UdLrf8s0VpSjlGdyxeI8/d4+UGAGQHnZpnC/cFgQ7VJlmNIq6Gk49ZoLJn1F6MIljmyf7n5o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769527155; c=relaxed/simple;
	bh=sqRtYnS4EMx1wud8eWzUNmsiL0QjlWJurfA7CBk479E=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ApVTYZ7E9wX2DdpWVY8IimrgByJMAve3FE9vmFNFnwJ/WNxhKiSUDYoHVyw+7jhI2LPS32oKhTlXgg/sBGpQcTb6dm2i8eiCWp1SKEVTs7kWDize5EZgGnlNeCk+AEkvX1nhFo0a4OutEwW0DZj7/jBDpKMezncxIcY6hGLYgSw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=UpuPk5bm; arc=none smtp.client-ip=74.125.82.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dl1-f41.google.com with SMTP id a92af1059eb24-1233c155a42so8235283c88.1
        for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 07:19:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769527153; x=1770131953; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lo2+pTnr8aPKBBLG3pwCmtVAgLkRnA2s+o7HL4Gsrrg=;
        b=UpuPk5bmFtgcj0KTCj0P03FzBgBYahm+XT5wUdS4Fu+JiMvLESM8Yj/sOjPeJXQDyV
         oRFxfDiNmNOBMoq+CH+ON8XrpeSrK+4Kz6q3C9gRB8xovCrZ8MxqgGxb8YyrZA36OS32
         UnXNaK8nKVS1lrvs5Rgf/fU+mhE9OBLZ18Vses/GaLtzZ7hqs4idgU6Oqn1oTn2Ww5rz
         KnGmkylxF55hnE+WPBM99k+BzX26CnRH6Uls0VlETsmuQCXvoxvXP6/A7kTcsi2+QwLC
         uaVBKPz6YxZj1vbZU3T/iaVUzs6cACQAGlXcTRSgo1KDLjR8sAteMFB8+ZC5XeCi/avW
         hXDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769527153; x=1770131953;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=lo2+pTnr8aPKBBLG3pwCmtVAgLkRnA2s+o7HL4Gsrrg=;
        b=GxHAJXwP93WvCdl57ZitCEoAJBWAOMIiZ6hvT8JWqMPvlNwkLb85OjeSlUbXFkSCrk
         pIOpu+05yE8T+08ORQlRZKWt1t91tTpWX7EyvFkaMiAUrRYLO4neHjckfpLoPq8a4U12
         eyU09jWpuM7IaJfkvBpLTru/Hdsjj7/mZUQa3zzMPN1dojRpDaA16SLymze0PveyVQpi
         SKq/xLeS8sRwhNtsdzRtyju23xJbCSYYBVL1sytLvmVea6rd/yMd5JRU4GeMa+tsHrld
         E4f1CRDlmsWlsSxWwKOiLuvsLy/4XqdkQAgGQmI9bxT4U2B0xBrU+hvkaE/WUc0Q0u01
         jJ5Q==
X-Forwarded-Encrypted: i=1; AJvYcCXNGQ14G7ZuRCSrPkJAGjMvaY60vmVXYdmk6mnyJjDwX25vMxwFUm+nJT7TiVcIAMx5rWw8pFJ6CjvO@vger.kernel.org
X-Gm-Message-State: AOJu0YyaaKyzkg/n5ssT3Ar6V481U50/+oaJQksPZmyCVzEcWusDMb1x
	S/4cUVrW9uxYHyc8QpFqN6r4n7Nd9X4YVvuN1JBKdbP1Z0k6TbgPHTvm
X-Gm-Gg: AZuq6aL+/MoPKZH+47k4dFkt7fzsKlHq6frQp2y8FyePsniEd6EgHOkxE0YMWnXZ/xn
	tY70eIuUmqxXDIycPNSXkNabwLgFGaHF5kIJj6LB+qoq4jBqbuOutU+7uuuRfZTVCHvQPCikKC7
	2UFqVK0ppKNSA7rnsHNMHVB+XVTQHFLeKaTF24wM35ls7Ai2cl8ODQUdtSU1vZf/u3Xv4WmJLni
	COPJnqzZlIWcvkKSPzxdTDa3gfWxD4tzq8H3vUN3dvan4jXvCdQ5ItCbamNHag/GdKG/7xF3eKK
	qWDkXW2CXn7c8hv9i/JJCQcFVch2XwzckHVpDCzyiycmJGRXwPeqcWzcG7GABbTIGoBgSuyVlwU
	w1uRszVWZBXgrTzbSYYzuE21274+ovydAhIG9IvZfmWENuhiDx7Hhc7PxM352scuXLjIMN39Ys3
	X+5j3eKTnzV/aX0n8vVGIACwQg
X-Received: by 2002:a05:7301:1f01:b0:2b0:5b6b:6529 with SMTP id 5a478bee46e88-2b78da68e7cmr1147445eec.39.1769527152906;
        Tue, 27 Jan 2026 07:19:12 -0800 (PST)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:da43:aeff:fecc:bfd5])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2b73aa03fd0sm17872331eec.23.2026.01.27.07.19.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jan 2026 07:19:12 -0800 (PST)
Sender: Guenter Roeck <groeck7@gmail.com>
Date: Tue, 27 Jan 2026 07:19:11 -0800
From: Guenter Roeck <linux@roeck-us.net>
To: Vasileios Amoiridis <vassilisamir@gmail.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-hwmon@vger.kernel.org, linux-doc@vger.kernel.org,
	Vasileios Amoiridis <vasileios.amoiridis@cern.ch>
Subject: Re: [PATCH v2 2/2] hwmon: Add support for HiTRON HAC300S PSU
Message-ID: <19d5da08-5605-414a-a1f3-2849b9bff19b@roeck-us.net>
References: <20260119190806.35276-1-vassilisamir@gmail.com>
 <20260119190806.35276-3-vassilisamir@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260119190806.35276-3-vassilisamir@gmail.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-259989-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[roeck-us.net];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[linux@roeck-us.net,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[9];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[cern.ch:email,roeck-us.net:mid,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 7CE9196B00
X-Rspamd-Action: no action

On Mon, Jan 19, 2026 at 08:08:06PM +0100, Vasileios Amoiridis wrote:
> From: Vasileios Amoiridis <vasileios.amoiridis@cern.ch>
> 
> Add Support for HiTRON HAC300S PSU. This is a AC/DC hot-swappable
> CompactPCI Serial Dual output active current sharing switching power
> supply with a 312W rating.
> 
> Signed-off-by: Vasileios Amoiridis <vasileios.amoiridis@cern.ch>

checkpatch --strict returns various whitespace errors. Please run that
command in the future.

Also,

> +static int hac300s_read_byte_data(struct i2c_client *client, int page, int reg)
> +{
> +	const struct pmbus_driver_info *info = pmbus_get_driver_info(client);
> +	struct hac300s_data *data = to_hac300s_data(info);
> +
> +	if (reg == PMBUS_VOUT_MODE)
> +		return data->exponent;
> +
> +	return pmbus_read_byte_data(client, page, reg);

This should return -ENODATA.

No need to resend; I fixed it all up and applied the patch.

Thanks,
Guenter

