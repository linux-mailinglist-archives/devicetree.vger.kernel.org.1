Return-Path: <devicetree+bounces-27144-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FCCA819684
	for <lists+devicetree@lfdr.de>; Wed, 20 Dec 2023 02:49:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C46501C25196
	for <lists+devicetree@lfdr.de>; Wed, 20 Dec 2023 01:49:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A688E613E;
	Wed, 20 Dec 2023 01:49:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=analog.onmicrosoft.com header.i=@analog.onmicrosoft.com header.b="cVjHigT8"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-00128a01.pphosted.com (mx0a-00128a01.pphosted.com [148.163.135.77])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC6F27472;
	Wed, 20 Dec 2023 01:49:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=analog.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=analog.com
Received: from pps.filterd (m0375855.ppops.net [127.0.0.1])
	by mx0b-00128a01.pphosted.com (8.17.1.24/8.17.1.24) with ESMTP id 3BK0TFn6024775;
	Tue, 19 Dec 2023 20:49:24 -0500
Received: from nam10-dm6-obe.outbound.protection.outlook.com (mail-dm6nam10lp2101.outbound.protection.outlook.com [104.47.58.101])
	by mx0b-00128a01.pphosted.com (PPS) with ESMTPS id 3v3g4s9ee8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 19 Dec 2023 20:49:23 -0500 (EST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hbN8OLSFpXFJxRZ8DUgC0S+mBlY+Bq7PUHmXvBvbtH9pgJwom0PD3snTN9zqlo75KKSuni/jm8CHCR4FkdiO9bLYZJxzSIGA+P0/8bRMrYkz3X7li3vYLRdTMZY5bKIWXjmxxEM+8jgWdjITndtcAwLEalYn7B+bKKHdQkUDUhc8g849Ajm5USVEumZ7QU2JWC9lnGNH4frO50fgwDJi+gNjj62Q4B1vSZo9Hkr3kFRdxkqmMAqWSg9k4e3zGVbLtWCOQbeAljBR3nsxOiKjgB5zzQV/m9a3c5nL9jv3EQt2iqOOCWYXeniQqCe0kRf/aBdG1DHuZVNuZWgqACHU2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5/vGFOgEkKgNj4amZKxGKjsqK7GiUsfDI9Fuygz0fvY=;
 b=brGG+UX7kWOY4OuEqdhxZjtid/xRhU+rfBGsSshKu4npE/kFyKh9PNrjQuXfbU0aP5KF7MSw/etLGglanDklImCZ4oTj2oxqI6Ext/+c5+OQCIQl1lKCtKxu4qbkKGFi8pdmqonkCfCcj3CokPvxehWRzbKvGTX8r9oI66fwxoBgQKqp/9/vugxv3JfM6C+G0lSW0McCuxN6KmznJZ7xKEA91BW7Fg0GGCmBAuQZnfhlKIQpGoLbfrEzwG7iCCmR9cLUKg3DaWs9wmzkXXkvlymvslfWkFXgv7nH+RXqGbv4J7Ch9VrO5DQlp7li21CManev5tCfOi0mBAJtnMG59w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=analog.com; dmarc=pass action=none header.from=analog.com;
 dkim=pass header.d=analog.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=analog.onmicrosoft.com; s=selector2-analog-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5/vGFOgEkKgNj4amZKxGKjsqK7GiUsfDI9Fuygz0fvY=;
 b=cVjHigT83dXBWMLa4tjBvEjm5C/N1JDzAqxBtQPYXtm5RHbzfwdfsZ/K0R33iesZIOjYNcZmHSLq8VhM2d1oyKclUqyU2msMtok6lI+bQEz1Q5Uh+SKSlXEPciSD9S2OSmsDK1jyjVqXLz6LR54m+3NvBRUvI8mKPk+ST0CKHgc=
Received: from PH0PR03MB6771.namprd03.prod.outlook.com (2603:10b6:510:122::17)
 by SN7PR03MB7035.namprd03.prod.outlook.com (2603:10b6:806:351::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7113.18; Wed, 20 Dec
 2023 01:49:21 +0000
Received: from PH0PR03MB6771.namprd03.prod.outlook.com
 ([fe80::defd:60a2:d154:5afc]) by PH0PR03MB6771.namprd03.prod.outlook.com
 ([fe80::defd:60a2:d154:5afc%4]) with mapi id 15.20.7113.016; Wed, 20 Dec 2023
 01:49:21 +0000
From: "Matyas, Daniel" <Daniel.Matyas@analog.com>
To: Guenter Roeck <linux@roeck-us.net>
CC: Jean Delvare <jdelvare@suse.com>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley
	<conor+dt@kernel.org>, Jonathan Corbet <corbet@lwn.net>,
        "linux-hwmon@vger.kernel.org" <linux-hwmon@vger.kernel.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>
Subject: RE: [PATCH 1/3] hwmon: max31827: Add PEC support
Thread-Topic: [PATCH 1/3] hwmon: max31827: Add PEC support
Thread-Index: 
 AQHaLpsJwCfUNDapL0KYBUa9I84zGLCo8tIAgAYzjHCAABptAIAAGU7ugAAR0wCAAgA24A==
Date: Wed, 20 Dec 2023 01:49:21 +0000
Message-ID: 
 <PH0PR03MB677186C968350C7ABD0B3DA58996A@PH0PR03MB6771.namprd03.prod.outlook.com>
References: <20231214143648.175336-1-daniel.matyas@analog.com>
 <2e0bf1cf-824d-40c6-9450-7ed4740f2f46@roeck-us.net>
 <PH0PR03MB6771B89E4D3291BA0B1B5ABF8990A@PH0PR03MB6771.namprd03.prod.outlook.com>
 <5baa93fe-bd08-4f11-9c5c-42060e89930c@roeck-us.net>
 <PH0PR03MB6771CF6A95CB576E534C225F8990A@PH0PR03MB6771.namprd03.prod.outlook.com>
 <7f470259-89c9-4a4c-90d8-0997a706f7dd@roeck-us.net>
In-Reply-To: <7f470259-89c9-4a4c-90d8-0997a706f7dd@roeck-us.net>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-dg-ref: 
 =?utf-8?B?UEcxbGRHRStQR0YwSUc1dFBTSmliMlI1TG5SNGRDSWdjRDBpWXpwY2RYTmxj?=
 =?utf-8?B?bk5jWkcxaGRIbGhjMXhoY0hCa1lYUmhYSEp2WVcxcGJtZGNNRGxrT0RRNVlq?=
 =?utf-8?B?WXRNekprTXkwMFlUUXdMVGcxWldVdE5tSTROR0poTWpsbE16VmlYRzF6WjNO?=
 =?utf-8?B?Y2JYTm5MV1pqTmpBMk16RXlMVGxsWkRrdE1URmxaUzFpTnpVNUxURTRNV1Js?=
 =?utf-8?B?WVdGbU1UTTBNVnhoYldVdGRHVnpkRnhtWXpZd05qTXhOQzA1WldRNUxURXha?=
 =?utf-8?B?V1V0WWpjMU9TMHhPREZrWldGaFpqRXpOREZpYjJSNUxuUjRkQ0lnYzNvOUlq?=
 =?utf-8?B?RTVNekEwSWlCMFBTSXhNek0wTnpVeE1EVTFPRFExTkRjME9UVWlJR2c5SWk5?=
 =?utf-8?B?UVFUVkRTMWs1TjBaaFprOUhUa3RCY2tZMFV6WllMME15VVQwaUlHbGtQU0lp?=
 =?utf-8?B?SUdKc1BTSXdJaUJpYnowaU1TSWdZMms5SW1OQlFVRkJSVkpJVlRGU1UxSlZS?=
 =?utf-8?B?azVEWjFWQlFVVnZRMEZCUTI1b2NtMHJOV3BNWVVGWlpGQjVOazE2ZDNOemJt?=
 =?utf-8?B?Z3dMMHh2ZWxCRGVYbGpSRUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVG?=
 =?utf-8?B?QlFVRklRVUZCUVVSaFFWRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZC?=
 =?utf-8?B?UVVGRlFVRlJRVUpCUVVGQmJFZFVSMVpuUVVGQlFVRkJRVUZCUVVGQlFVRkJT?=
 =?utf-8?B?alJCUVVGQ2FFRkhVVUZoVVVKbVFVaE5RVnBSUW1wQlNGVkJZMmRDYkVGR09F?=
 =?utf-8?B?RmpRVUo1UVVjNFFXRm5RbXhCUjAxQlpFRkNla0ZHT0VGYVowSm9RVWQzUVdO?=
 =?utf-8?B?M1FteEJSamhCV21kQ2RrRklUVUZoVVVJd1FVZHJRV1JuUW14QlFVRkJRVUZC?=
 =?utf-8?B?UVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJR?=
 =?utf-8?B?VUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFV?=
 =?utf-8?B?RkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVWQlFVRkJRVUZCUVVG?=
 =?utf-8?B?QlowRkJRVUZCUVc1blFVRkJSMFZCV2tGQ2NFRkdPRUZqZDBKc1FVZE5RV1JS?=
 =?utf-8?B?UW5sQlIxVkJXSGRDZDBGSVNVRmlkMEp4UVVkVlFWbDNRakJCU0UxQldIZENN?=
 =?utf-8?B?RUZIYTBGYVVVSjVRVVJGUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFV?=
 =?utf-8?B?RkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVG?=
 =?utf-8?B?QlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZC?=
 =?utf-8?B?UVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRlJR?=
 =?utf-8?B?VUZCUVVGQlFVRkJRMEZCUVVGQlFVTmxRVUZCUVZsUlFtdEJSMnRCV0hkQ2Vr?=
 =?utf-8?B?RkhWVUZaZDBJeFFVaEpRVnBSUW1aQlNFRkJZMmRDZGtGSGIwRmFVVUpxUVVo?=
 =?utf-8?B?UlFXTjNRbVpCU0ZGQllWRkNiRUZJU1VGTlowRkJRVUZCUVVGQlFVRkJRVUZC?=
 =?utf-8?B?UVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJR?=
 =?utf-8?B?VUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFV?=
 =?utf-8?B?RkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVG?=
 =?utf-8?B?QlFVRkJRVUZDUVVGQlFVRkJRVUZCUVVsQlFVRkJRVUZCUFQwaUx6NDhMMjFs?=
 =?utf-8?Q?dGE+?=
x-dg-rorf: true
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR03MB6771:EE_|SN7PR03MB7035:EE_
x-ms-office365-filtering-correlation-id: 04af5733-f7c4-4f18-656a-08dc00fde2c2
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 ZKyw/c34OvkUEaLdTb2FReYXV51DBM/bCxA3iYo7PMQRXDbwJbdlWZtWJcqQEGheU04yYu0oaD0x0vbY9ab7gH3xwbxsXjkcUh9FYVCFB8i0gNrVjW/sW6GLS53YQkylxswRBkuxds9AE/L1aPteEwfDDWWbnYzENVhREc6rg5CfM9q0NtSUrD3VezM0stnj8qkhPHJFlvC0eipTvjHKIePPPaDJyrwJYi6RI0MTkH9xfPt0FfyV8QnFdh121w+mEWNNeZKq2+aqzyzcaSzCXJ/JlY/3et2exB/541MLotEruO8tXYAcltCU/DNR0LVzzJszuDY8SenV/a0mCEqbaDZb6r65IdvLCI73oTba6YWdfVnJItG7224iSMYbW7sHNW105YDERVZkirPyg8+cxhwu1TbwuOUXh6COwSr0ulxyEJ13skKaxk2y0jvymcZnXvpukwMHbLjuFXo8/6PZq43wF1Fn9LXveeIATvMO8J27FJMFmx+hhw+z4yBpr2AKDSe1tOOHxEmDGpGRZ3FYsx56cEgKZ/6re34YddJ06aAnqc/IWaavlwzzmIfk9HZdEd1Oc3YEgPG61++vVmY3wjvpqf8hm3x/S6+oltueVt+x51svDTZXIj1E7e6El6dslBniXebRt2iW0CxHvWEEPVbCNweOovjfXuKZCuSgxN0=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH0PR03MB6771.namprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(136003)(346002)(366004)(376002)(39860400002)(396003)(230922051799003)(230173577357003)(230273577357003)(451199024)(1800799012)(64100799003)(186009)(38070700009)(52536014)(55016003)(38100700002)(4326008)(8936002)(8676002)(122000001)(5660300002)(7416002)(2906002)(66946007)(478600001)(76116006)(64756008)(66446008)(66476007)(66556008)(316002)(54906003)(6916009)(83380400001)(26005)(9686003)(41300700001)(53546011)(71200400001)(86362001)(7696005)(33656002)(6506007);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?UDdmb1ZzaUpRc1d4YWc0VGxXcklmSzJsa21oQlFBMElnaVk5Ni9NOGlxV21u?=
 =?utf-8?B?VTdUYkJRa2pscXIvOE5lQmptMGl6KzZMR0s1VEgrVHIwbW9OM3N1VE13UlM3?=
 =?utf-8?B?QUp1NHoyQ2FrZ2NvWGRYVGhUSDIzYU9Sd1I4SXplRDdOZW9jeXFFZWNGd3Js?=
 =?utf-8?B?SGRvcXJjUWlZV1Z1SGpleGhFa1NMNmpVMnRSMGdNeUNHcXZjNlJkR21rV0Vh?=
 =?utf-8?B?S1FtUkdhZERTVGRXWUhEcnJZWCtaTmJNWko1QUdqczRqc2VPbUoyU1VtNllN?=
 =?utf-8?B?YnhranNNMElXTWNVQUdlS1dvMWU2MnY1MmNJYXhlRzBSSkVxdjBjVWI1Y0M2?=
 =?utf-8?B?ZTFXbzh4S1Z0TTliWTIyb0plaTAyQVcxM0VYR2E0a2hkUFVNOFlMK2xqNVZw?=
 =?utf-8?B?UEpkUXk2V2plQkwxNU9wNS9UUEVvWlA1bFRGVnhBZjNObWFqNWxNRTYxS0k2?=
 =?utf-8?B?L0hNTTNhUFFlaDRzMVFsdTlQRk8rWElDL3RWeG90V3ZOdGRvamRvT29rMzVD?=
 =?utf-8?B?VjVwaktYQk9vb1FPZWJFMG9OcUlBemk0RTR4aTNzUnU0TzYzMGJvWmJ1bGVu?=
 =?utf-8?B?TDQ0VHh6VzVPTmZVOHd4eU1qY0JFOVVSNDA2QThNSWlvMmVaK1RYclR6V3Fl?=
 =?utf-8?B?WHdFRDArMTE1K2pJR2dTUnN5NHVFdjdQc3NhN3puaVh1WmZtOHFCT3BOeXAv?=
 =?utf-8?B?c2pITWowUW5oTFBNeXo5OWswd1Byb2VKNjRaSU5jSEtMWmh1cXowL2cvM1Rx?=
 =?utf-8?B?Rk5Db3hrMWVHUml6NWNQc0FBOUJOYzQ1OTFhU3UvcnlZTjhQK09vUTRsL0Zv?=
 =?utf-8?B?TGRyTXRvbFFCdU1vS0ZKc3RYcjl1emJLT29DTzFIVzZPb2xNK0FmcXpUMDJ2?=
 =?utf-8?B?bkFPWUxidVB6YjNOQWM2WXMyWTVZQnNHOFNTWFhtL3ovTUhGTDdIZ3ZOU1Jx?=
 =?utf-8?B?eExkVVY0WURmRng4Q3pCOTZ1YTVDQ1VGNnJveEU0bFZaZ2oxUXFLS0lhaW5j?=
 =?utf-8?B?U09FeHB3TmZ5OXRTMnVab1lrVHJzdUdSTktOSWd6VDl1TDNBYzFqVGo4R1Z1?=
 =?utf-8?B?SWFFcGNIZDdhdW1kTXFkR1FjcWNWb2JUNFFnVzVUTDBqRWtsL2ljQkZyL0hM?=
 =?utf-8?B?TlpKZ005Rm91eWVVUTNoanNiY0IzNjhRWFZCNnR2b1FWL1ZhUy9CRGNCVGF4?=
 =?utf-8?B?TFpJeVBoTC83VEZ2VVM4SlE4aWhsZmR0ekVHdXdVbEFMQzBVMmFtTWtpMnkx?=
 =?utf-8?B?MXN2cm9nTms1TXAzTnN4cXpQZGsrTXlXZ0hpVFhHUm56MDdMdnpsTko1REc3?=
 =?utf-8?B?SVZ3VzhXMmF5WDZDL1pJZmpEWUVqU2tWbUppRmVXOGVDK1dZZFh0ekJzZGVV?=
 =?utf-8?B?dTQyOTU3NVRDY0w0NW9ZekgrTXg4T3BEc0gxYmhmTGZpejJScGRnMys2TVpx?=
 =?utf-8?B?WnloaHcxZ0NISTFGbUw5c1dTQmhTUTVQYnhWcVRGUGZqNi9pWWdSbGRLdGxX?=
 =?utf-8?B?dVFzbVBEcGtpdmVtUHJ6cVcrcU01RFFOK29IN0tNbWI2MzlnRVpKV1FsZjRX?=
 =?utf-8?B?aW9yKzNjK1BtQmlURVlDd3diTzgxUDI2WjhrYWgwMTZIRWpyZVhYeHJJbGV4?=
 =?utf-8?B?QUlVNWtiQ1o5S2Y4eElOSm9rWWc5UFN6d09LUkMzem9TaCtDYnZUUEVCSkxS?=
 =?utf-8?B?ZlowU0RYNFZFU3VMUWRWVGdVSllwSVVkanZpN1RwN3lROXNPRUhLc2RPNGNa?=
 =?utf-8?B?Vnp4OStHaXNqTGlpTW1Ka2pMam1tQzlOcjVWb1hiMjlEdWt2UkhiQ3hIRVJJ?=
 =?utf-8?B?WTU3YitQV3ZVWi94aUZEWEUycUpaZTczVm9naW5rbHJFc2xLUnpBaUF0OHBh?=
 =?utf-8?B?b29KaTdSdFo5UUpNT3VvTW9xZVpSQ1dJVDlGNkl5SmtnVTVhdWhCVHVkbWlx?=
 =?utf-8?B?TldkeHFBMWNHRVllMFdnR0k3dlh6Nm9wcTNpWnhLYjFPdXExOTcxYlIyT3p3?=
 =?utf-8?B?M0t4THQweCsxWDkreW1jeG82UUx6dXFSSGFDNjQvSlFCTnorSzQ1K1BCcTVN?=
 =?utf-8?B?SFdZTUhtQ1FvOHl3d21OMnIwQW1VL0YwTUZVaTAvUW5mN2Q2eFR6OHNScmtR?=
 =?utf-8?Q?2WS9DWOz9EZ5YMNAksa6pzizP?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-OriginatorOrg: analog.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR03MB6771.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 04af5733-f7c4-4f18-656a-08dc00fde2c2
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Dec 2023 01:49:21.0510
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: eaa689b4-8f87-40e0-9c6f-7228de4d754a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: s0wrK5btOdKr4mcEY67eeXBEbsHlG7W1LGyZZt+rv2Lh4Y8pA0lUmdhmpFPQocrwSzf22hrsRByMx66c3QHP+E8mK50owAtCoKbT5fPkdVs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR03MB7035
X-Proofpoint-ORIG-GUID: InUlcjUNWDgtwBUpEGjOuLM9LkknBNFm
X-Proofpoint-GUID: InUlcjUNWDgtwBUpEGjOuLM9LkknBNFm
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.997,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-12-02_01,2023-11-30_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0 suspectscore=0
 impostorscore=0 mlxscore=0 malwarescore=0 adultscore=0 lowpriorityscore=0
 clxscore=1015 mlxlogscore=999 priorityscore=1501 bulkscore=0 phishscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2311290000
 definitions=main-2312200010

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogR3VlbnRlciBSb2VjayA8
Z3JvZWNrN0BnbWFpbC5jb20+IE9uIEJlaGFsZiBPZiBHdWVudGVyIFJvZWNrDQo+IFNlbnQ6IE1v
bmRheSwgRGVjZW1iZXIgMTgsIDIwMjMgOTowMSBQTQ0KPiBUbzogTWF0eWFzLCBEYW5pZWwgPERh
bmllbC5NYXR5YXNAYW5hbG9nLmNvbT4NCj4gQ2M6IEplYW4gRGVsdmFyZSA8amRlbHZhcmVAc3Vz
ZS5jb20+OyBSb2IgSGVycmluZw0KPiA8cm9iaCtkdEBrZXJuZWwub3JnPjsgS3J6eXN6dG9mIEtv
emxvd3NraQ0KPiA8a3J6eXN6dG9mLmtvemxvd3NraStkdEBsaW5hcm8ub3JnPjsgQ29ub3IgRG9v
bGV5DQo+IDxjb25vcitkdEBrZXJuZWwub3JnPjsgSm9uYXRoYW4gQ29yYmV0IDxjb3JiZXRAbHdu
Lm5ldD47IGxpbnV4LQ0KPiBod21vbkB2Z2VyLmtlcm5lbC5vcmc7IGRldmljZXRyZWVAdmdlci5r
ZXJuZWwub3JnOyBsaW51eC0NCj4ga2VybmVsQHZnZXIua2VybmVsLm9yZzsgbGludXgtZG9jQHZn
ZXIua2VybmVsLm9yZw0KPiBTdWJqZWN0OiBSZTogW1BBVENIIDEvM10gaHdtb246IG1heDMxODI3
OiBBZGQgUEVDIHN1cHBvcnQNCj4gDQo+IFtFeHRlcm5hbF0NCj4gDQo+IE9uIDEyLzE4LzIzIDA5
OjU5LCBNYXR5YXMsIERhbmllbCB3cm90ZToNCj4gPg0KPiA+DQo+ID4gLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQ0K
PiA+IC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0NCj4gPiAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tDQo+ID4gLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQ0K
PiA+IC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0NCj4gPiAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tDQo+ID4gLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQ0K
PiA+IC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0NCj4gPiAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tDQo+ID4gLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQ0K
PiA+IC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0NCj4gPiAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tDQo+ID4gLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQ0K
PiA+IC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0NCj4gPiAtLS0tLS0tLS0tDQo+ID4gKlZvbjoqIEd1ZW50ZXIgUm9l
Y2sgPGdyb2VjazdAZ21haWwuY29tPiBpbSBBdWZ0cmFnIHZvbiBHdWVudGVyDQo+IFJvZWNrDQo+
ID4gPGxpbnV4QHJvZWNrLXVzLm5ldD4NCj4gPiAqR2VzZW5kZXQ6KiBNb250YWcsIERlemVtYmVy
IDE4LCAyMDIzIDY6MjY6NTcgbmFjaG0uDQo+ID4gKkFuOiogTWF0eWFzLCBEYW5pZWwgPERhbmll
bC5NYXR5YXNAYW5hbG9nLmNvbT4NCj4gPiAqQ2M6KiBKZWFuIERlbHZhcmUgPGpkZWx2YXJlQHN1
c2UuY29tPjsgUm9iIEhlcnJpbmcNCj4gPiA8cm9iaCtkdEBrZXJuZWwub3JnPjsgS3J6eXN6dG9m
IEtvemxvd3NraQ0KPiA+IDxrcnp5c3p0b2Yua296bG93c2tpK2R0QGxpbmFyby5vcmc+OyBDb25v
ciBEb29sZXkNCj4gPiA8Y29ub3IrZHRAa2VybmVsLm9yZz47IEpvbmF0aGFuIENvcmJldCA8Y29y
YmV0QGx3bi5uZXQ+Ow0KPiA+IGxpbnV4LWh3bW9uQHZnZXIua2VybmVsLm9yZyA8bGludXgtaHdt
b25Admdlci5rZXJuZWwub3JnPjsNCj4gPiBkZXZpY2V0cmVlQHZnZXIua2VybmVsLm9yZyA8ZGV2
aWNldHJlZUB2Z2VyLmtlcm5lbC5vcmc+Ow0KPiA+IGxpbnV4LWtlcm5lbEB2Z2VyLmtlcm5lbC5v
cmcgPGxpbnV4LWtlcm5lbEB2Z2VyLmtlcm5lbC5vcmc+Ow0KPiA+IGxpbnV4LWRvY0B2Z2VyLmtl
cm5lbC5vcmcgPGxpbnV4LWRvY0B2Z2VyLmtlcm5lbC5vcmc+DQo+ID4gKkJldHJlZmY6KiBSZTog
W1BBVENIIDEvM10gaHdtb246IG1heDMxODI3OiBBZGQgUEVDIHN1cHBvcnQNCj4gPg0KPiA+IFtF
eHRlcm5hbF0NCj4gPg0KPiA+IE9uIDEyLzE4LzIzIDA2OjU1LCBNYXR5YXMsIERhbmllbCB3cm90
ZToNCj4gPiBbIC4uLiBdDQo+ID4+PiBPbiB0b3Agb2YgdGhhdCwgaXQgaXMgbm90IGNsZWFyIHdo
eSByZWdtYXAgY2FuJ3QgYmUgdXNlZCBpbiB0aGUgZmlyc3QNCj4gcGxhY2UuDQo+ID4+PiBJdCBz
ZWVtcyB0aGF0IHRoZSBtYWpvciBjaGFuZ2UgaXMgdGhhdCBvbmUgbmVlZHMgdG8gcmVhZCB0aGUN
Cj4gPj4+IGNvbmZpZ3VyYXRpb24gcmVnaXN0ZXIgYWZ0ZXIgYSB3cml0ZSB0byBzZWUgaWYgdGhl
cmUgd2FzIGEgUEVDDQo+ID4+PiBlcnJvci4gSXQgaXMgbm90IGltbWVkaWF0ZWx5IG9idmlvdXMg
d2h5IHRoYXQgYWRkaXRpb25hbCByZWFkIChpZg0KPiA+Pj4gaW5kZWVkIG5lY2Vzc2FyeSkgd291
bGQgcmVxdWlyZSByZWdtYXAgc3VwcG9ydCB0byBiZSBkcm9wcGVkLg0KPiA+Pj4NCj4gPj4NCj4g
Pj4gSSB0cmllZCBvdXQgd3JpdGluZyBhbmQgYW5kIHJlYWRpbmcgd2l0aCByZWdtYXAsIGJ1dCBp
dCBpcyBub3Qgd29ya2luZw0KPiBwcm9wZXJseS4gRXZlbiBpZiBJIG1vZGlmeSB0aGUgY2xpZW50
IGZsYWcsIEkgc3RpbGwgcmVjZWl2ZSBvbmx5IDIgYnl0ZXMgb2YgZGF0YQ0KPiAoYSB3b3JkKS4g
SSBzaG91bGQgYmUgcmVjZWl2aW5nIDIrMSBieXRlcyA9IGRhdGEgKyBDUkMtOC4NCj4gPj4NCj4g
Pj4gV2l0aCBpMmNfc21idXMgcmVhZHMgYW5kIHdyaXRlcywgd2hlbiBJIHNldCB0aGUgZmxhZywg
SSByZWNlaXZlIHRoZSAyKzENCj4gYnl0ZXMsIGFzIGV4cGVjdGVkLg0KPiA+Pg0KPiA+DQo+ID4g
VGhlIFNNQnVzIGNvZGUgaW4gZHJpdmVycy9pMmMvaTJjLWNvcmUtc21idXMuYyBpcyBzdXBwb3Nl
ZCB0byBjaGVjayBpZg0KPiA+IHRoZSByZWNlaXZlZCBQRUMgaXMgY29ycmVjdCBmb3IgU01CdXMg
dHJhbnNmZXJzLiBBcmUgeW91IHNheWluZyB0aGF0DQo+ID4gdGhpcyBkb2Vzbid0IHdvcmssIG9y
IHRoYXQgcmVnbWFwIGRvZXNuJ3QgdXNlIFNNQnVzIGZ1bmN0aW9ucyB0bw0KPiA+IGNvbW11bmlj
YXRlIHdpdGggdGhlIGNoaXAgPw0KPiA+DQo+ID4gVGhhbmtzLA0KPiA+IEd1ZW50ZXINCj4gPg0K
PiA+DQo+ID4gSSBhbSA3MCUgc3VyZSwgdGhhdCB0aGUgcmVnbWFwIGRvZXMgbm90IHVzZSBTTUJ1
cyBmdW5jdGlvbnMuDQo+ID4NCj4gDQo+IEl0IHNob3VsZC4NCj4gDQo+ICQgZ2l0IGdyZXAgc21i
dXMgZHJpdmVycy9iYXNlL3JlZ21hcC9yZWdtYXAtaTJjLmMNCj4gZHJpdmVycy9iYXNlL3JlZ21h
cC9yZWdtYXAtaTJjLmM6c3RhdGljIGludA0KPiByZWdtYXBfc21idXNfYnl0ZV9yZWdfcmVhZCh2
b2lkICpjb250ZXh0LCB1bnNpZ25lZCBpbnQgcmVnLA0KPiBkcml2ZXJzL2Jhc2UvcmVnbWFwL3Jl
Z21hcC1pMmMuYzogICAgICAgcmV0ID0NCj4gaTJjX3NtYnVzX3JlYWRfYnl0ZV9kYXRhKGkyYywg
cmVnKTsNCj4gZHJpdmVycy9iYXNlL3JlZ21hcC9yZWdtYXAtaTJjLmM6c3RhdGljIGludA0KPiBy
ZWdtYXBfc21idXNfYnl0ZV9yZWdfd3JpdGUodm9pZCAqY29udGV4dCwgdW5zaWduZWQgaW50IHJl
ZywNCj4gZHJpdmVycy9iYXNlL3JlZ21hcC9yZWdtYXAtaTJjLmM6ICAgICAgIHJldHVybg0KPiBp
MmNfc21idXNfd3JpdGVfYnl0ZV9kYXRhKGkyYywgcmVnLCB2YWwpOw0KPiBkcml2ZXJzL2Jhc2Uv
cmVnbWFwL3JlZ21hcC1pMmMuYzpzdGF0aWMgY29uc3Qgc3RydWN0IHJlZ21hcF9idXMNCj4gcmVn
bWFwX3NtYnVzX2J5dGUgPSB7DQo+IGRyaXZlcnMvYmFzZS9yZWdtYXAvcmVnbWFwLWkyYy5jOiAg
ICAgICAucmVnX3dyaXRlID0NCj4gcmVnbWFwX3NtYnVzX2J5dGVfcmVnX3dyaXRlLA0KPiBkcml2
ZXJzL2Jhc2UvcmVnbWFwL3JlZ21hcC1pMmMuYzogICAgICAgLnJlZ19yZWFkID0NCj4gcmVnbWFw
X3NtYnVzX2J5dGVfcmVnX3JlYWQsDQo+IGRyaXZlcnMvYmFzZS9yZWdtYXAvcmVnbWFwLWkyYy5j
OnN0YXRpYyBpbnQNCj4gcmVnbWFwX3NtYnVzX3dvcmRfcmVnX3JlYWQodm9pZCAqY29udGV4dCwg
dW5zaWduZWQgaW50IHJlZywNCj4gZHJpdmVycy9iYXNlL3JlZ21hcC9yZWdtYXAtaTJjLmM6ICAg
ICAgIHJldCA9DQo+IGkyY19zbWJ1c19yZWFkX3dvcmRfZGF0YShpMmMsIHJlZyk7DQo+IGRyaXZl
cnMvYmFzZS9yZWdtYXAvcmVnbWFwLWkyYy5jOnN0YXRpYyBpbnQNCj4gcmVnbWFwX3NtYnVzX3dv
cmRfcmVnX3dyaXRlKHZvaWQgKmNvbnRleHQsIHVuc2lnbmVkIGludCByZWcsDQo+IGRyaXZlcnMv
YmFzZS9yZWdtYXAvcmVnbWFwLWkyYy5jOiAgICAgICByZXR1cm4NCj4gaTJjX3NtYnVzX3dyaXRl
X3dvcmRfZGF0YShpMmMsIHJlZywgdmFsKTsNCj4gZHJpdmVycy9iYXNlL3JlZ21hcC9yZWdtYXAt
aTJjLmM6c3RhdGljIGNvbnN0IHN0cnVjdCByZWdtYXBfYnVzDQo+IHJlZ21hcF9zbWJ1c193b3Jk
ID0gew0KPiBkcml2ZXJzL2Jhc2UvcmVnbWFwL3JlZ21hcC1pMmMuYzogICAgICAgLnJlZ193cml0
ZSA9DQo+IHJlZ21hcF9zbWJ1c193b3JkX3JlZ193cml0ZSwNCj4gZHJpdmVycy9iYXNlL3JlZ21h
cC9yZWdtYXAtaTJjLmM6ICAgICAgIC5yZWdfcmVhZCA9DQo+IHJlZ21hcF9zbWJ1c193b3JkX3Jl
Z19yZWFkLA0KPiBkcml2ZXJzL2Jhc2UvcmVnbWFwL3JlZ21hcC1pMmMuYzpzdGF0aWMgaW50DQo+
IHJlZ21hcF9zbWJ1c193b3JkX3JlYWRfc3dhcHBlZCh2b2lkICpjb250ZXh0LCB1bnNpZ25lZCBp
bnQgcmVnLA0KPiBkcml2ZXJzL2Jhc2UvcmVnbWFwL3JlZ21hcC1pMmMuYzogICAgICAgcmV0ID0N
Cj4gaTJjX3NtYnVzX3JlYWRfd29yZF9zd2FwcGVkKGkyYywgcmVnKTsNCj4gZHJpdmVycy9iYXNl
L3JlZ21hcC9yZWdtYXAtaTJjLmM6c3RhdGljIGludA0KPiByZWdtYXBfc21idXNfd29yZF93cml0
ZV9zd2FwcGVkKHZvaWQgKmNvbnRleHQsIHVuc2lnbmVkIGludCByZWcsDQo+IGRyaXZlcnMvYmFz
ZS9yZWdtYXAvcmVnbWFwLWkyYy5jOiAgICAgICByZXR1cm4NCj4gaTJjX3NtYnVzX3dyaXRlX3dv
cmRfc3dhcHBlZChpMmMsIHJlZywgdmFsKTsNCj4gZHJpdmVycy9iYXNlL3JlZ21hcC9yZWdtYXAt
aTJjLmM6c3RhdGljIGNvbnN0IHN0cnVjdCByZWdtYXBfYnVzDQo+IHJlZ21hcF9zbWJ1c193b3Jk
X3N3YXBwZWQgPSB7DQo+IGRyaXZlcnMvYmFzZS9yZWdtYXAvcmVnbWFwLWkyYy5jOiAgICAgICAu
cmVnX3dyaXRlID0NCj4gcmVnbWFwX3NtYnVzX3dvcmRfd3JpdGVfc3dhcHBlZCwNCj4gZHJpdmVy
cy9iYXNlL3JlZ21hcC9yZWdtYXAtaTJjLmM6ICAgICAgIC5yZWdfcmVhZCA9DQo+IHJlZ21hcF9z
bWJ1c193b3JkX3JlYWRfc3dhcHBlZCwNCj4gZHJpdmVycy9iYXNlL3JlZ21hcC9yZWdtYXAtaTJj
LmM6c3RhdGljIGludA0KPiByZWdtYXBfaTJjX3NtYnVzX2kyY193cml0ZSh2b2lkICpjb250ZXh0
LCBjb25zdCB2b2lkICpkYXRhLA0KPiBkcml2ZXJzL2Jhc2UvcmVnbWFwL3JlZ21hcC1pMmMuYzog
ICAgICAgcmV0dXJuDQo+IGkyY19zbWJ1c193cml0ZV9pMmNfYmxvY2tfZGF0YShpMmMsICgodTgg
KilkYXRhKVswXSwgY291bnQsDQo+IGRyaXZlcnMvYmFzZS9yZWdtYXAvcmVnbWFwLWkyYy5jOnN0
YXRpYyBpbnQNCj4gcmVnbWFwX2kyY19zbWJ1c19pMmNfcmVhZCh2b2lkICpjb250ZXh0LCBjb25z
dCB2b2lkICpyZWcsDQo+IGRyaXZlcnMvYmFzZS9yZWdtYXAvcmVnbWFwLWkyYy5jOiAgICAgICBy
ZXQgPQ0KPiBpMmNfc21idXNfcmVhZF9pMmNfYmxvY2tfZGF0YShpMmMsICgodTggKilyZWcpWzBd
LCB2YWxfc2l6ZSwgdmFsKTsNCj4gZHJpdmVycy9iYXNlL3JlZ21hcC9yZWdtYXAtaTJjLmM6c3Rh
dGljIGNvbnN0IHN0cnVjdCByZWdtYXBfYnVzDQo+IHJlZ21hcF9pMmNfc21idXNfaTJjX2Jsb2Nr
ID0gew0KPiBkcml2ZXJzL2Jhc2UvcmVnbWFwL3JlZ21hcC1pMmMuYzogICAgICAgLndyaXRlID0N
Cj4gcmVnbWFwX2kyY19zbWJ1c19pMmNfd3JpdGUsDQo+IGRyaXZlcnMvYmFzZS9yZWdtYXAvcmVn
bWFwLWkyYy5jOiAgICAgICAucmVhZCA9DQo+IHJlZ21hcF9pMmNfc21idXNfaTJjX3JlYWQsDQo+
IGRyaXZlcnMvYmFzZS9yZWdtYXAvcmVnbWFwLWkyYy5jOnN0YXRpYyBpbnQNCj4gcmVnbWFwX2ky
Y19zbWJ1c19pMmNfd3JpdGVfcmVnMTYodm9pZCAqY29udGV4dCwgY29uc3Qgdm9pZCAqZGF0YSwN
Cj4gZHJpdmVycy9iYXNlL3JlZ21hcC9yZWdtYXAtaTJjLmM6ICAgICAgIHJldHVybg0KPiBpMmNf
c21idXNfd3JpdGVfaTJjX2Jsb2NrX2RhdGEoaTJjLCAoKHU4ICopZGF0YSlbMF0sIGNvdW50LA0K
PiBkcml2ZXJzL2Jhc2UvcmVnbWFwL3JlZ21hcC1pMmMuYzpzdGF0aWMgaW50DQo+IHJlZ21hcF9p
MmNfc21idXNfaTJjX3JlYWRfcmVnMTYodm9pZCAqY29udGV4dCwgY29uc3Qgdm9pZCAqcmVnLA0K
PiBkcml2ZXJzL2Jhc2UvcmVnbWFwL3JlZ21hcC1pMmMuYzogICAgICAgcmV0ID0NCj4gaTJjX3Nt
YnVzX3dyaXRlX2J5dGVfZGF0YShpMmMsICgodTE2ICopcmVnKVswXSAmIDB4ZmYsDQo+IGRyaXZl
cnMvYmFzZS9yZWdtYXAvcmVnbWFwLWkyYy5jOiAgICAgICAgICAgICAgIHJldCA9DQo+IGkyY19z
bWJ1c19yZWFkX2J5dGUoaTJjKTsNCj4gZHJpdmVycy9iYXNlL3JlZ21hcC9yZWdtYXAtaTJjLmM6
c3RhdGljIGNvbnN0IHN0cnVjdCByZWdtYXBfYnVzDQo+IHJlZ21hcF9pMmNfc21idXNfaTJjX2Js
b2NrX3JlZzE2ID0gew0KPiBkcml2ZXJzL2Jhc2UvcmVnbWFwL3JlZ21hcC1pMmMuYzogICAgICAg
LndyaXRlID0NCj4gcmVnbWFwX2kyY19zbWJ1c19pMmNfd3JpdGVfcmVnMTYsDQo+IGRyaXZlcnMv
YmFzZS9yZWdtYXAvcmVnbWFwLWkyYy5jOiAgICAgICAucmVhZCA9DQo+IHJlZ21hcF9pMmNfc21i
dXNfaTJjX3JlYWRfcmVnMTYsDQo+IGRyaXZlcnMvYmFzZS9yZWdtYXAvcmVnbWFwLWkyYy5jOiAg
ICAgICAgICAgICAgIGJ1cyA9DQo+ICZyZWdtYXBfaTJjX3NtYnVzX2kyY19ibG9jazsNCj4gZHJp
dmVycy9iYXNlL3JlZ21hcC9yZWdtYXAtaTJjLmM6ICAgICAgICAgICAgICAgYnVzID0NCj4gJnJl
Z21hcF9pMmNfc21idXNfaTJjX2Jsb2NrX3JlZzE2Ow0KPiBkcml2ZXJzL2Jhc2UvcmVnbWFwL3Jl
Z21hcC1pMmMuYzogICAgICAgICAgICAgICAgICAgICAgIGJ1cyA9DQo+ICZyZWdtYXBfc21idXNf
d29yZDsNCj4gZHJpdmVycy9iYXNlL3JlZ21hcC9yZWdtYXAtaTJjLmM6ICAgICAgICAgICAgICAg
ICAgICAgICBidXMgPQ0KPiAmcmVnbWFwX3NtYnVzX3dvcmRfc3dhcHBlZDsNCj4gZHJpdmVycy9i
YXNlL3JlZ21hcC9yZWdtYXAtaTJjLmM6ICAgICAgICAgICAgICAgYnVzID0gJnJlZ21hcF9zbWJ1
c19ieXRlOw0KPiANCj4gSWYgdGhhdCBkb2Vzbid0IHdvcmsgZm9yIHNvbWUgcmVhc29uLCBJJ2Qg
cmF0aGVyIGZpZ3VyZSBvdXQgd2h5IGluc3RlYWQgb2YNCj4gc3RhcnRpbmcgdG8gZHJvcCByZWdt
YXAgc3VwcG9ydC4NCj4gDQo+IEd1ZW50ZXINCg0KSSB0cmllZCB0byBmaWd1cmUgaXQgb3V0IGFu
ZCB0aGlzIGlzIHdoYXQgSSBjYW1lIHVwIHdpdGguIFRoZSBjb2RlIHNuaXBwZXQgYmVsb3cgaXMg
ZnJvbSBkcml2ZXJzL2Jhc2UvcmVnbWFwL3JlZ21hcC1pMmMuYzoNCg0Kc3RhdGljIGNvbnN0IHN0
cnVjdCByZWdtYXBfYnVzICpyZWdtYXBfZ2V0X2kyY19idXMoc3RydWN0IGkyY19jbGllbnQgKmky
YywNCgkJCQkJY29uc3Qgc3RydWN0IHJlZ21hcF9jb25maWcgKmNvbmZpZykNCnsNCgljb25zdCBz
dHJ1Y3QgaTJjX2FkYXB0ZXJfcXVpcmtzICpxdWlya3M7DQoJY29uc3Qgc3RydWN0IHJlZ21hcF9i
dXMgKmJ1cyA9IE5VTEw7DQoJc3RydWN0IHJlZ21hcF9idXMgKnJldF9idXM7DQoJdTE2IG1heF9y
ZWFkID0gMCwgbWF4X3dyaXRlID0gMDsNCg0KCWlmIChpMmNfY2hlY2tfZnVuY3Rpb25hbGl0eShp
MmMtPmFkYXB0ZXIsIEkyQ19GVU5DX0kyQykpDQoJCWJ1cyA9ICZyZWdtYXBfaTJjOw0KCWVsc2Ug
aWYgKGNvbmZpZy0+dmFsX2JpdHMgPT0gOCAmJiBjb25maWctPnJlZ19iaXRzID09IDggJiYNCgkJ
IGkyY19jaGVja19mdW5jdGlvbmFsaXR5KGkyYy0+YWRhcHRlciwNCgkJCQkJIEkyQ19GVU5DX1NN
QlVTX0kyQ19CTE9DSykpDQoJCWJ1cyA9ICZyZWdtYXBfaTJjX3NtYnVzX2kyY19ibG9jazsNCgll
bHNlIGlmIChjb25maWctPnZhbF9iaXRzID09IDggJiYgY29uZmlnLT5yZWdfYml0cyA9PSAxNiAm
Jg0KCQlpMmNfY2hlY2tfZnVuY3Rpb25hbGl0eShpMmMtPmFkYXB0ZXIsDQoJCQkJCUkyQ19GVU5D
X1NNQlVTX0kyQ19CTE9DSykpDQoJCWJ1cyA9ICZyZWdtYXBfaTJjX3NtYnVzX2kyY19ibG9ja19y
ZWcxNjsNCgllbHNlIGlmIChjb25maWctPnZhbF9iaXRzID09IDE2ICYmIGNvbmZpZy0+cmVnX2Jp
dHMgPT0gOCAmJg0KCQkgaTJjX2NoZWNrX2Z1bmN0aW9uYWxpdHkoaTJjLT5hZGFwdGVyLA0KCQkJ
CQkgSTJDX0ZVTkNfU01CVVNfV09SRF9EQVRBKSkNCgkJc3dpdGNoIChyZWdtYXBfZ2V0X3ZhbF9l
bmRpYW4oJmkyYy0+ZGV2LCBOVUxMLCBjb25maWcpKSB7DQoJCWNhc2UgUkVHTUFQX0VORElBTl9M
SVRUTEU6DQoJCQlidXMgPSAmcmVnbWFwX3NtYnVzX3dvcmQ7DQoJCQlicmVhazsNCgkJY2FzZSBS
RUdNQVBfRU5ESUFOX0JJRzoNCgkJCWJ1cyA9ICZyZWdtYXBfc21idXNfd29yZF9zd2FwcGVkOw0K
CQkJYnJlYWs7DQoJCWRlZmF1bHQ6CQkvKiBldmVyeXRoaW5nIGVsc2UgaXMgbm90IHN1cHBvcnRl
ZCAqLw0KCQkJYnJlYWs7DQoJCX0NCg0KVGhpcyBpcyBleGVjdXRlZCB3aGVuIHJlZ21hcCBpcyBp
bml0aWFsaXplZC4gTXkgYWRhcHRlciBoYXMgdGhlIEkyQ19GVU5DX0kyQyBmdW5jdGlvbmFsaXR5
IChJIHVzZSBhIHJhc3BiZXJyeSBwaSA0KSwgc28gaXQgc2VlbXMgdG8gbWUgbGlrZSByZWdtYXBf
aTJjIGlzIGxvYWRlZCBhcyB0aGUgYnVzLiBUaGlzIHVzZXMgaTJjX3RyYW5zZmVyIGludGVybmFs
bHkgdG8gcmVhZCBhbmQgd3JpdGUuDQoNCkZvciBQRUMgSSBuZWVkIHJlZ21hcF9zbWJ1c193b3Jk
LiBUaGlzIHVzZXMgaTJjX3NtYnVzX3hmZXIgaW50ZXJuYWxseS4gVW5saWtlIGkyY190cmFuc2Zl
ciwgaTJjX3NtYnVzX3hmZXIgY2FuIGJlIHVzZWQgdG8gc2VuZCBhbmQgcmVjZWl2ZSBQRUMgYnl0
ZS4NCg0KV2hhdCBzaG91bGQgSSBkbz8NCg0KS2luZCByZWdhcmRzLA0KRGFuaWVsDQoNCg==

