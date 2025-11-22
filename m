Return-Path: <devicetree+bounces-241402-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id CF931C7D821
	for <lists+devicetree@lfdr.de>; Sat, 22 Nov 2025 22:51:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id C28C24E11E9
	for <lists+devicetree@lfdr.de>; Sat, 22 Nov 2025 21:51:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2131B275114;
	Sat, 22 Nov 2025 21:51:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="H8qre7YW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dy1-f177.google.com (mail-dy1-f177.google.com [74.125.82.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C384248F47
	for <devicetree@vger.kernel.org>; Sat, 22 Nov 2025 21:51:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763848291; cv=none; b=qJ+J4jTVJ5bmaWe0LQgEI4KEZhQ+fDJ+mMcb4pHAZ66qdR5jxEg1/hIaJuteIiVfqHnHAm65xNOyGu4SInEr5AnvXDEp3bjh9Z3D7N9JfZFFymnYkJESXd3WALlFPBH/i5n05d+pWibLmZPT4zjX2id//z5IVa6RWgt96fjQ8P0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763848291; c=relaxed/simple;
	bh=sgIGC0pQx5M2+++y/D5666fONd9fLNscGXvum9j6Anc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=XLYmKuVTKnofaLUz+vpW17BJ+m9bD25cbiN8Qu8Ekq6u019LX24MUxsDCZZHKAEAZTAlLHaGvdrxftRHRHvlO/OPzOt/PVbg2cTiQFIEtAFq+Lk3fk0gIsb7HCsP87ELa7+u6srmrgUllsSYeLbH1wwsiLvZz0nuRo3aO+KbO/I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=H8qre7YW; arc=none smtp.client-ip=74.125.82.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dy1-f177.google.com with SMTP id 5a478bee46e88-2a45877bd5eso4341930eec.0
        for <devicetree@vger.kernel.org>; Sat, 22 Nov 2025 13:51:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763848289; x=1764453089; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=sgIGC0pQx5M2+++y/D5666fONd9fLNscGXvum9j6Anc=;
        b=H8qre7YWXECjV2XKmM/zMdc66gtRk5hsMoFPocdXklN2bUu3ZFfrMFiZgIN5yMzSp+
         TWF2OcqqjBhVDO5o1098hpfH3l3TlCxKf61QLS6Mm8GPou86dGBYJ21sQjAuAPALuVzC
         TJavc9LocRQQoj6apmd4awXhUyt2e1eCykBJ+df+5OZk7i8xN/ss6X0pi2t8UM/GFRZC
         esZPGP+pcCePgVxjiylCf5HW5vED2FUCjthOyAcPC6ICGy860qKbzLFt4BJtXbI4V3dM
         IoGH3XNCvElAX27GZFxmRTt9gxeih7Kh07vQHol7mRK6W4+ZQSUmTz+euP6rtSDEDx4q
         4QiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763848289; x=1764453089;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=sgIGC0pQx5M2+++y/D5666fONd9fLNscGXvum9j6Anc=;
        b=gU1lOwL6/w3EOdttkpB8NNPCJAjMcQrnzabNMIT8lY3n4HPFEO5DYlLy1LUkrvihXC
         Ly9FCT948jMuTAOHcQIndCRxMSMijfjnYEavsn27vzNNIIzP3O5c8JCdkeoj6u0ZIdd5
         6GhuMkO7uCowuZlvxjtohmtSI9DvGIeOCVx2TxNnUUQteGANnm0iFz0DfK7YAtr9yOZl
         wKTCJALcLhVJHqhFYSkazVmzlxC29F778Ca/mVocUjx7eUQP5rDXokWyHd1OaHXCKupj
         DwkE2SaQx2xEpSkPcPr3FiZk+lJMXx5iXB5/JWvRM2gjASEDzM0i+fStrLNt9qKyb6No
         TzuA==
X-Forwarded-Encrypted: i=1; AJvYcCVfoWemdNy+EGi47t50NAEU9tiwcdD/US+m0yv8rTnEcXMqCIu7DTjd+tb7jvuiFbnxFixc2VNXz8Qo@vger.kernel.org
X-Gm-Message-State: AOJu0YyQ6RGJIqdaqBU9X8E3TxTyq3eEGFDTuF9Q1Mh9GdQbrZYkFaZD
	OgL8qDuujgXhu35Czun9w82fJCS1zb9s/AUUGLhV8EDTyFrxDOOXfMLuppojLPnGWgk=
X-Gm-Gg: ASbGnctKvvTegPr9bSY9qH0LlLzwk1MH8PjP6XP4Kyf3BYYx6a8mCJ5O+JESkK9a26F
	Nej79GlSRv66GUircJcAZOHVIls7H4avB7+bSXuefE3vu+fuRTFMeNB9WRlSHgDJQJpGyAbcwTM
	Cy87fDinYIkHErt1+0m1HoA6proA1eXVgWCiQ0gLsbG/hsoGrwUt6BDEInaVW+gILmtbx2wWxqG
	J9NZqDcb4mDHWGL/ZTQvds6MJiKzeW4dALpINF6osqAn+8DA5we0vVusGQxEL1HG2e0QVaGHJdz
	vPooj0BwXu4Wdmst8FLXP3nCBm0zLs/rLJnWVK07lr6zqK6a0Wt4sXE5LBcKhuY3eTtFpNacY06
	XJM7sMHT+avI2yLMAIkYykzv1MmqaViEIh1UiOg18ZwAiIcXIXNEuBLR/xpvzaX1UHCbQ/ZByYF
	X4NL1MAzShPVcmlKYamvsij8xR4RwywbpYqZD9VmOUDk4KfPycKJu0yZobsmqV0SgObcil59wFV
	mc=
X-Google-Smtp-Source: AGHT+IFNDEEwf7OottYcIuM1xeiwS9j2lNcjBQFtNr/OAXdk+p4eWElY7PjIFeGssqAr89WCo0/fsQ==
X-Received: by 2002:a05:7300:a2ca:b0:2a6:a306:efdb with SMTP id 5a478bee46e88-2a718576e14mr3775499eec.3.1763848288539;
        Sat, 22 Nov 2025 13:51:28 -0800 (PST)
Received: from [192.168.68.63] (104-12-136-65.lightspeed.irvnca.sbcglobal.net. [104.12.136.65])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2a6fc4f6671sm45238184eec.3.2025.11.22.13.51.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 22 Nov 2025 13:51:28 -0800 (PST)
Message-ID: <836fac14-f396-408a-b7b5-7581e2e7244e@gmail.com>
Date: Sat, 22 Nov 2025 13:51:27 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 0/5] ARM: dts: qcom: msm8960: expressatt: Add more
 peripherals
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20251121-expressatt_nfc_accel_magn_light-v2-0-54ce493cc6cf@gmail.com>
 <b67e579f-1bf6-43d3-bddb-caf2989086cf@oss.qualcomm.com>
Content-Language: en-US
From: Rudraksha Gupta <guptarud@gmail.com>
In-Reply-To: <b67e579f-1bf6-43d3-bddb-caf2989086cf@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

>> ---
>> Changes in v2:
>> - Fixed formatting issues
>> - Use GSBI instead of i2c-gpio
> I'm assuming this worked out fine for you and the devices are still
> fully responsive?

Yep! Working splendidly, thanks again for the review :)


