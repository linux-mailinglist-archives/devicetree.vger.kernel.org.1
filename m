Return-Path: <devicetree+bounces-243366-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 49FFDC97416
	for <lists+devicetree@lfdr.de>; Mon, 01 Dec 2025 13:28:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 33E28343D01
	for <lists+devicetree@lfdr.de>; Mon,  1 Dec 2025 12:27:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C519C30F535;
	Mon,  1 Dec 2025 12:26:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZhaWPcyt"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 945202DA758;
	Mon,  1 Dec 2025 12:26:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764591987; cv=none; b=ewO8dY+EX3HA0DsI/Zip4PpnAo/H4E9je+0YbYDcrB2howiMuDILLQt1cmR307IxGixC6AuLQG9+UVhjz4vvep4341O2lOMifbhaqppTsBCBqrbuD5SxQI+GCbp5yJ29qGLw3VzS7E9syyauVfP533veQLMaUxaltzyL2v8XCsA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764591987; c=relaxed/simple;
	bh=HwbmTSAOHlu/06UJIRWqqyPZO7iTe/0Ssg8JnH1Yga4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=fmaGowAw2E4AJioSSJqZbOb8Or7diO8SiCZs9qj+PRGjCF7S6O7J2PadWABVaO4rXrPl8v4E2nwYoT6JxxDZ0rLEcBQChLpOKBmIkooJiw+17+jw/xeGUnR2ODNSbViitE0JgB4b5f2AfjQa3dbovMOkH4UjfYLWksK4nFOIuik=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZhaWPcyt; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8C2ADC4CEF1;
	Mon,  1 Dec 2025 12:26:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764591987;
	bh=HwbmTSAOHlu/06UJIRWqqyPZO7iTe/0Ssg8JnH1Yga4=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=ZhaWPcytKZ+qwvjMmx+brlU4f4hOw3s8DMUbXhlwhVl41Mo0EVSauuiEYmJccEvXg
	 TJJQH9PEFw+lfAYTbZaY6zP77KXbX4p+uKfz5erjSROYQ+SSq0x+JtPt7v92rfFYtI
	 D9hVXu7RQ8cK2EEfyjxjO0TjXhawn2krpgReVZquPZQSLAflIEsWtoIqVoP4Ada6E2
	 6vnMULmnHwT3DvdCkINYRqXwpFZsLCXXEHie5+1l+bFy9uDveksaBqj9S8uO5Q0BM5
	 zw8/gzo6rs7n9XkaMKvV4prXDGwO2TlMDfHNfaMhuANf+psNWNbWW2aI5a8zMMztB7
	 /HK74+MjmiTsQ==
Message-ID: <35735aa9-26ce-4922-bd05-f68cc75353fb@kernel.org>
Date: Mon, 1 Dec 2025 06:26:25 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RESEND PATCH 2/2] dt-bindings: soc: altera: combine Intel's
 SoCFPGA into altera.yaml
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20251125134004.261165-1-dinguyen@kernel.org>
 <20251125134004.261165-2-dinguyen@kernel.org>
 <20251126-blond-bat-of-emphasis-81c0a8@kuoka>
Content-Language: en-US
From: Dinh Nguyen <dinguyen@kernel.org>
In-Reply-To: <20251126-blond-bat-of-emphasis-81c0a8@kuoka>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 11/26/25 03:49, Krzysztof Kozlowski wrote:
> On Tue, Nov 25, 2025 at 07:40:03AM -0600, Dinh Nguyen wrote:
>> For all SoCFPGA platforms, whether it has the "intel" or "altr" vendor
>> prefix are referring to the same business unit that is responsible for
>> the platform. Thus, it would make sense to have the device bindings
>> documentation in the same location. Move the Intel AgileX board binding
>> documentations into the same file that contains the Altera ones.
> 
> I had impression that "intel" is the new, thus preferred vendor prefix
> and actual owner, so please describe here why this is the other way.
> 

Altera has just spun off to be a separate business entity from Intel. 
Yes, while Intel is still a minority owner, Altera is technically on 
it's own. Moving forward, "altr" would be the preferred vendor prefix 
for SoCFPGA parts.

Dinh

