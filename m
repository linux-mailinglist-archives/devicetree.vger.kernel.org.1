Return-Path: <devicetree+bounces-16952-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 828267F0874
	for <lists+devicetree@lfdr.de>; Sun, 19 Nov 2023 20:26:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B3C4E1C2040E
	for <lists+devicetree@lfdr.de>; Sun, 19 Nov 2023 19:26:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AF79A5691;
	Sun, 19 Nov 2023 19:26:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=metafoo.de header.i=@metafoo.de header.b="OxvlxS0a"
X-Original-To: devicetree@vger.kernel.org
X-Greylist: delayed 1522 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Sun, 19 Nov 2023 11:26:43 PST
Received: from www381.your-server.de (www381.your-server.de [78.46.137.84])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 95751F2;
	Sun, 19 Nov 2023 11:26:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=metafoo.de;
	s=default2002; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
	References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID;
	bh=GGNnLIvbjhIlwxvrrg0DrVt5151hIafFsJvIP6H/gBY=; b=OxvlxS0a9FjRAwklYrDZFRIxIz
	53ub3/XC9Ty4PPmpMVV28m3tAWNjy8KaUWH3hLlF7duxbn3/HiAnSTmxphGdSG1cdeYiyNrlzpYTW
	oFZqZ98HHY0nCpW91q1WXyqQkJkVY6OSU2DpEWM75ysbdTEVIh6cvNvSoxeH9H7VVd/ZNgatPAax+
	9KhpZRlepkje88i/30h0akUE8EpRViSypHcq0EB+rTEtUfLYGnc4vPvmcGGtjadcNrrYLGaqVI/5B
	vH2IIEFFMVCJO3gcpEotvFffeh2JyQ6yU1u9sih7Aq6Ps2AaXHbwWZw8fTvZKZDLRaAKiSmOf1ewf
	bIFkFEbA==;
Received: from sslproxy03.your-server.de ([88.198.220.132])
	by www381.your-server.de with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <lars@metafoo.de>)
	id 1r4n2k-0001Nb-V5; Sun, 19 Nov 2023 20:01:19 +0100
Received: from [136.25.87.181] (helo=[192.168.86.26])
	by sslproxy03.your-server.de with esmtpsa (TLSv1.3:TLS_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <lars@metafoo.de>)
	id 1r4n2k-000D7n-CU; Sun, 19 Nov 2023 20:01:18 +0100
Message-ID: <dce34f62-d6d9-467d-9126-a6649f1cfe60@metafoo.de>
Date: Sun, 19 Nov 2023 11:01:15 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 02/14] MAINTAINERS: add entry for AXI SPI Engine
To: David Lechner <dlechner@baylibre.com>
Cc: linux-spi@vger.kernel.org, devicetree@vger.kernel.org,
 Mark Brown <broonie@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Michael Hennerich <Michael.Hennerich@analog.com>,
 =?UTF-8?Q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, linux-kernel@vger.kernel.org
References: <20231117-axi-spi-engine-series-1-v1-0-cc59db999b87@baylibre.com>
 <20231117-axi-spi-engine-series-1-v1-2-cc59db999b87@baylibre.com>
 <CAMknhBEi64y7uC=kYbL1698VES2xGcQEAFQJM-469E77McxkPg@mail.gmail.com>
Content-Language: en-US
From: Lars-Peter Clausen <lars@metafoo.de>
In-Reply-To: <CAMknhBEi64y7uC=kYbL1698VES2xGcQEAFQJM-469E77McxkPg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Authenticated-Sender: lars@metafoo.de
X-Virus-Scanned: Clear (ClamAV 0.103.10/27098/Sun Nov 19 09:38:38 2023)

On 11/17/23 12:44, David Lechner wrote:
> On Fri, Nov 17, 2023 at 2:13 PM David Lechner <dlechner@baylibre.com> wrote:
>> The AXI SPI Engine driver has been in the kernel for many years but has
>> lacked a proper maintainers entry. This adds a new entry for the driver
>> and the devicetree bindings.
>>
>> Signed-off-by: David Lechner <dlechner@baylibre.com>
>> ---
>>
>> Note: This work is being done by BayLibre on behalf of Analog Devices Inc.
>> This is why the maintainers are @analog.com rather than @baylibre.com.
>>
>>   MAINTAINERS | 10 ++++++++++
>>   1 file changed, 10 insertions(+)
>>
>> diff --git a/MAINTAINERS b/MAINTAINERS
>> index 97f51d5ec1cf..a40f61ad5843 100644
>> --- a/MAINTAINERS
>> +++ b/MAINTAINERS
>> @@ -3415,6 +3415,16 @@ W:       https://ez.analog.com/linux-software-drivers
>>   F:     Documentation/devicetree/bindings/hwmon/adi,axi-fan-control.yaml
>>   F:     drivers/hwmon/axi-fan-control.c
>>
>> +AXI SPI ENGINE
>> +M:     Michael Hennerich <michael.hennerich@analog.com>
>> +M:     Nuno Sá <nuno.sa@analog.com>
>> +R:     David Lechner <dlechner@baylibre.com>
>> +L:     linux-spi@vger.kernel.org
>> +S:     Supported
>> +W:     https://ez.analog.com/linux-software-drivers
>> +F:     Documentation/devicetree/bindings/spi/adi,axi-spi-engine.yaml
>> +F:     drivers/spi/spi-axi-spi-engine.c
>> +
>>   AXXIA I2C CONTROLLER
>>   M:     Krzysztof Adamski <krzysztof.adamski@nokia.com>
>>   L:     linux-i2c@vger.kernel.org
>>
>> --
>> 2.42.0
>>
> Hi Lars,
>
> As the original author, do you have an interested in being included in
> this list?

No :)


