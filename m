Return-Path: <devicetree+bounces-5539-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 941F17B692F
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 14:39:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 2021A28142A
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 12:39:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 110111A5AF;
	Tue,  3 Oct 2023 12:39:38 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 016DB2915
	for <devicetree@vger.kernel.org>; Tue,  3 Oct 2023 12:39:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 20EE1C433C7;
	Tue,  3 Oct 2023 12:39:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1696336777;
	bh=ECR/7x6lqKutCE21tMiDm+DwzncvCbKErAMvXLYb+2M=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=YHaZUXRoRH9Vl0HrtucLND8/yKXBcIxTpnk4vjfktbwkrc03Or7eFVhPieeWFLOIA
	 hxA8FTCYrtRVQT6wt9EOEbOAOw55YRujZrJT9MfX8Yg3wIRdBkiAt/F59kNfUtCmr6
	 75tR7xCcakG65rDs8mBITWb1WWktuIVgWfpRlbYs=
Date: Tue, 3 Oct 2023 14:39:34 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Max Filippov <jcmvbkbc@gmail.com>
Cc: linux-kernel@vger.kernel.org, linux-serial@vger.kernel.org,
	devicetree@vger.kernel.org, Jiri Slaby <jirislaby@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Ilpo =?iso-8859-1?Q?J=E4rvinen?= <ilpo.jarvinen@linux.intel.com>
Subject: Re: [PATCH v4 1/5] serial: core: tidy invalid baudrate handling in
 uart_get_baud_rate
Message-ID: <2023100322-roamer-dab-b96a@gregkh>
References: <20230928151631.149333-1-jcmvbkbc@gmail.com>
 <20230928151631.149333-2-jcmvbkbc@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230928151631.149333-2-jcmvbkbc@gmail.com>

On Thu, Sep 28, 2023 at 08:16:27AM -0700, Max Filippov wrote:
> uart_get_baud_rate has input parameters 'min' and 'max' limiting the
> range of acceptable baud rates from the caller's perspective. If neither
> current or old termios structures have acceptable baud rate setting and
> 9600 is not in the min/max range either the function returns 0 and
> issues a warning.
> However for a UART that does not support speed of 9600 baud this is
> expected behavior.
> Clarify that 0 can be (and always could be) returned from the
> uart_get_baud_rate. Don't issue a warning in that case.
> Move the warinng to the uart_get_divisor instead, which is often called
> with the uart_get_baud_rate return value.

This doesn't match up with the patch contents anymore :(


