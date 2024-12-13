Return-Path: <devicetree+bounces-130796-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C6349F0ED1
	for <lists+devicetree@lfdr.de>; Fri, 13 Dec 2024 15:15:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E99E9188ECC7
	for <lists+devicetree@lfdr.de>; Fri, 13 Dec 2024 14:13:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1D37E1E1A08;
	Fri, 13 Dec 2024 14:12:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=armadeus.com header.i=@armadeus.com header.b="mKpZoGCm"
X-Original-To: devicetree@vger.kernel.org
Received: from 10.mo561.mail-out.ovh.net (10.mo561.mail-out.ovh.net [87.98.165.232])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A4DC41DF975
	for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 14:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=87.98.165.232
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734099150; cv=none; b=A0TbQxIqDHDPnuyYC3ZIjkJ0UkE75JNul7Dr+H70F1qVmUSIVtb6XK1ACtMJcd8VZ9eUh29QKvoOl3mfqMfkYYEN5Q8O0AD43NeR72iVQzwn0MfO0SSo8UCacMU2miKKGTZkJOxH+0s4gJ7hFzQARmgXD76p9pk4CsMJ6LIkYy8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734099150; c=relaxed/simple;
	bh=rwHTCI38F2W/M23fk0xPREXg6fA27mVLNmNt8j0l3cU=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=Th+QOTiQxHrbnYQTEq8R+Tiwj+65Rx75WWaShGLAsruNOTX8t5Qymb2WZ2I8+fwN8pkoLpdtQ39iUQJyfsfk+EWxuk5mSIMLU6OonCgaoW0szQTOnspyOGNJuzM5HoUvd+v7+tnscOxPQeZ/kkczIGnPEROZ4JGcxJxz3ZhsQnE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=armadeus.com; spf=pass smtp.mailfrom=armadeus.com; dkim=pass (2048-bit key) header.d=armadeus.com header.i=@armadeus.com header.b=mKpZoGCm; arc=none smtp.client-ip=87.98.165.232
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=armadeus.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=armadeus.com
Received: from director8.ghost.mail-out.ovh.net (unknown [10.108.25.249])
	by mo561.mail-out.ovh.net (Postfix) with ESMTP id 4Y8rch6LdSz1TKg
	for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 14:02:12 +0000 (UTC)
Received: from ghost-submission-5b5ff79f4f-46sqs (unknown [10.110.168.204])
	by director8.ghost.mail-out.ovh.net (Postfix) with ESMTPS id 9A2DB1FE99;
	Fri, 13 Dec 2024 14:02:12 +0000 (UTC)
Received: from armadeus.com ([37.59.142.103])
	by ghost-submission-5b5ff79f4f-46sqs with ESMTPSA
	id fvHSHWQ+XGdobxsAqQRD9Q
	(envelope-from <sebastien.szymanski@armadeus.com>); Fri, 13 Dec 2024 14:02:12 +0000
Authentication-Results:garm.ovh; auth=pass (GARM-103G005b246f7d0-3865-44b3-b6a6-10aabdd0da58,
                    AC9E123DAEBE92F67EA64EF011D6E8896A637286) smtp.auth=sebastien.szymanski@armadeus.com
X-OVh-ClientIp:92.148.253.243
Message-ID: <16825ef1-4748-4dba-8703-9dac9857b050@armadeus.com>
Date: Fri, 13 Dec 2024 15:02:11 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Splashcreen sur Screenboard 7
To: Hubert CHAUMETTE <hubert.c@abioexpertise.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>
References: <DB9PR05MB90088B32599A567EDABD2DD1904A2@DB9PR05MB9008.eurprd05.prod.outlook.com>
 <640c864a-5121-42db-ab92-5dba4ca4c8b0@armadeus.com>
 <DB9PR05MB9008368D802458B3DF72F16590512@DB9PR05MB9008.eurprd05.prod.outlook.com>
 <DB7PR05MB4508F50A90FFD3B5F575F02C902E2@DB7PR05MB4508.eurprd05.prod.outlook.com>
 <2cfcc6ed-db1e-4ed3-9ba1-dd0f52413313@armadeus.com>
 <AM0PR05MB4499447A630C4694F95ADDE290382@AM0PR05MB4499.eurprd05.prod.outlook.com>
Content-Language: fr
From: =?UTF-8?Q?S=C3=A9bastien_Szymanski?= <sebastien.szymanski@armadeus.com>
Autocrypt: addr=sebastien.szymanski@armadeus.com; keydata=
 xsBNBFNfZLEBCACv1lqSePHJNpRgcnER+3emy+Arjz84zFax3XkogjY/e3ZneihIgWrVKe5M
 ql16pX4KTkzNgMUKz4bG/XwT3kjcrXshxFLlg7KrHMl287C+W+QOUjnjVeRi/su+SPmjz8VD
 yr11h+ZkVLAWhS+uQJ93jy1NwG8M4t1kBLAVHHD5Vw4FJ+3ouaVYIp1X1Cr8bVKQw33Q1aTd
 ro0kMBb96B9vNu7ciJZ3gvlaBzUEKOgNnq9KaywuLnqrqr4HUIn5JuxZjCjJzt9kTAKcTfp2
 cJM8qpp+2FF5qtbkse9fZ6M64qozgOPr9Tk4Amf9fZEUQ6UNw14mmBZuXSzoHe75gI7TABEB
 AAHNN1PDqWJhc3RpZW4gU1pZTUFOU0tJIDxzZWJhc3RpZW4uc3p5bWFuc2tpQGFybWFkZXVz
 LmNvbT7CwJAEEwEIADoCGyMHCwkIBwMCAQYVCAIJCgsEFgIDAQIeAQIXgBYhBJwGygpYm/1C
 /GCmwbCaKeiBMmTiBQJdhIHLAAoJELCaKeiBMmTixXIH/2W3kbzRG0UF81jtRRnp0H83rjDT
 v0H+8fgFMRL/7HCJ1QPArkfRJlM2wlJkN+ChP09CCarYfUEHfRCHlTb7At6Yyrz1jziD7ZwX
 8IWHYRXnZkY5eZc5DsiUgq6JH49kt+GPzK8UVP9MTa6zkBpPCUf7LzZ4pD3FihdkT52BU3gI
 d9P49fSI0TYySlb/VKn815aOhvwEr7+Dh3mZUjSh7saofbRmVUOr7p+R3MvvGI19/IJZjeOE
 ZWliODDOt6HnBOtoGSXMcNIFF6snH52D5N5gY88njZjTwhgGGUBix1bsgf/EY0v4R5itZBXB
 B/Ze4Tm++YHaB75hZK6PQu/YRv7OwE0EU19ksQEIALo7jhXddrXBTRu5SAjelV53jyHBJTX/
 vN4nL/VbbW/saca+NJjDSxx5DBmotZbQdWIyZiSIjU/xnTREvtDrl6ZeSsKWd7ZqiuiY4fSR
 zwuQp9rd0yqRuxesrWeyJB1zCSdEvLyKASERt+nxkOA+IzJ4y1qLtvnWr+SL1AXgTMw+Tkyw
 KIDCRWHTIYas11ldGj82gOIpYeXnapeNLHfT4EQwg0NeWYHynJxAQWiX5aPlw0uSpAQSsBXQ
 FIe3fpoveMSnXK+PG2BBOzexYv7r4S70a6sF9sgTTPpfKqUaqqC+u1+bUX6alTAKhGKJywaF
 6ViqLlgY8PfwohSyAlqlTRMAEQEAAcLAdgQYAQgAIAIbDBYhBJwGygpYm/1C/GCmwbCaKeiB
 MmTiBQJdhIHSAAoJELCaKeiBMmTitU8IAK7NQM3fEwaF5XaKtepYWsVka44CD8A9e4r7NVK9
 ugirKvXirIxBSDmN/Db862NmVpITsZ6ERNSNZLm/7k55N+TexKYiFZeU7G92TEfAM6qPElvx
 DLEcrkNMq9r08YZeUloacsq31AL5fK4LW+xdvXudkdiKRMJsdTpmff3x5kIziGOHjwFP9wve
 ZgEH52gpbRsP8Whx/Z2lNX/BBRmFM8OnEXFsjjqDzYThdxTq85wGPpkgvvUGyPNRD7TpbB1C
 pajOUUkPxgj5LKt77HD1afeZNudWhgcdkbtT5PMQTT0WY6wvMEj9S1+bGPeXRGWLYB7gHQ+L
 JNoSD7Kz6Y9qnKo=
In-Reply-To: <AM0PR05MB4499447A630C4694F95ADDE290382@AM0PR05MB4499.eurprd05.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Ovh-Tracer-Id: 4495718330327624481
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeefuddrkeejgdehkecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjughrpefkffggfgfuvfhfhfgjtgfgsehtkeertddtvdejnecuhfhrohhmpefurogsrghsthhivghnucfuiiihmhgrnhhskhhiuceoshgvsggrshhtihgvnhdrshiihihmrghnshhkihesrghrmhgruggvuhhsrdgtohhmqeenucggtffrrghtthgvrhhnpeekvdevudegjeffgeelueeifedugfdvuefgvefhgfevlefhtdduvefgheetffetudenucfkphepuddvjedrtddrtddruddpledvrddugeekrddvheefrddvgeefpdefjedrheelrddugedvrddutdefnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehinhgvthepuddvjedrtddrtddruddpmhgrihhlfhhrohhmpehsvggsrghsthhivghnrdhsiiihmhgrnhhskhhisegrrhhmrgguvghushdrtghomhdpnhgspghrtghpthhtohepuddprhgtphhtthhopeguvghvihgtvghtrhgvvgesvhhgvghrrdhkvghrnhgvlhdrohhrghdpoffvtefjohhsthepmhhoheeiudgmpdhmohguvgepshhmthhpohhuth
DKIM-Signature: a=rsa-sha256; bh=frqmVDtlCYuf01qK0niHOypQ+fwqAltg7ZkY81uiRoE=;
 c=relaxed/relaxed; d=armadeus.com; h=From; s=ovhmo103079-selector1;
 t=1734098533; v=1;
 b=mKpZoGCmNMDUHEOVI/JzPILFxbygBj5IaYTHfLQTr42H0XSAlFQiOOIUiGG0Dii74SN4ysUk
 nSxBxirFEW3uw7fHq+LvH9S7kA3CFTk/qozSoMDrii3O2vEy8ZWHlj3APcmmppFwK+7y2KgxpJK
 iPXqU5vRoRpzbvm3P9OX3OkxHzw+B3PPgzwKMnDEetFV1PTgxXm8VdE6QlilQeDCPKhUgtZGvzz
 GhbouWctoi9UusL/hStHMBRx3An1eEkjL2RKKTBhFP/BSM/g/3HzPQw94rB7lp4a66tlsD8j7LA
 w401NPTHUswWSb+sbh03jZAX/BPWMqYVbNRU/DU2Yk5uA==

Bonjour,

mes réponses sont ci-dessous,

On 12/13/24 13:31, Hubert CHAUMETTE wrote:
> Bonjour Sébastien,
> 
> J'ai à nouveau passé du temps sur ce pb...
> Recompiler explicitement le noyau aide en effet (avec linux-tools en 
> prime sinon j'ai une erreur), mais une image à la résolution 1024x600 ne 
> passe pas avec Linux.
> Voici la situation :
> 
>   *
>     Le fichier /boot/logo.bmp en 1024x600 s'affiche correctement dans U-
>     Boot quand j'exécute :
>     if load mmc ${mmcdev}:${mmcpart} ${loadaddr} ${splashfile}; then bmp
>     display; fi
>   *
>     Le noyau l'efface immédiatement en démarrant, et affiche le pb suivant :
>     [    1.524727] [drm] Initialized mxsfb-drm 1.0.0 20160824 for
>     21c8000.lcdif on minor 0
>     [    1.591467] fbcon_init: disable boot-logo (boot-logo bigger than
>     screen).
>     [    1.591486] Console: switching to colour frame buffer device 128x37
>     [    1.637948] mxsfb 21c8000.lcdif: [drm] fb0: mxsfb-drmdrmfb frame
>     buffer device
>   *
>     J'ai testé avec différentes variations de bootargs, sans résultat :
>       o
>         setenv bootargs $bootargs logo.nologo
>       o
>         setenv bootargs $bootargs video=video=mxsfb:1024x600-16@60
>       o
>         setenv bootargs $bootargs video=mxsfb:1024x600-16@60,rotate=1
>       o
>         setenv bootargs $bootargs video=mxsfb:1024x600-32,rotate=1
>         fbcon=rotate:1
> 
> Peu m'importe si c'est Linux ou U-Boot qui affiche le logo, mais 
> j'aimerai une solution avec un logo qui persiste le temps du démarrage 
> du système. Au pire réutiliser le logo de la Screenboard 3.5 pour peu 
> qu'on puisse le centrer dans Linux.

J'avais déjà expliqué à Johan Develon que ce n'est pas possible dans 
l'état actuel des versions des logiciels utilisés (U-Boot et Linux), 
vous aurez toujours un fading pendant la transition U-Boot -> Linux.
Une solution est de ne pas allumé l'écran sous U-Boot (ou juste le 
backlight) et d'afficher le logo sous Linux.
Je ne vois pas pourquoi Linux ne veut pas de votre logo.

Cordialement,

> 
> Avez-vous des pistes ?
> 
> Cordialement,
> 
> Hubert CHAUMETTE
> ------------------------------------------------------------------------
> *De :* Sébastien Szymanski <sebastien.szymanski@armadeus.com>
> *Envoyé :* mardi 26 novembre 2024 10:18
> *À :* Hubert CHAUMETTE <hubert.c@abioexpertise.com>
> *Objet :* Re: Prise de contact
> Bonjour Hubert,
> 
> mes réponses sont ci-dessous.
> 
> On 11/25/24 16:22, Hubert CHAUMETTE wrote:
>  > Bonjour Sébastien,
>  >
>  > Je suis toujours sur le splashcreen :
>  >
>  >   *
>  >     J'ai mis à jour /boot/logo.bmp et j'arrive à l'afficher depuis U-
>  >     Boot en modifiant show_update_logo (ce qui prouve aussi que mes
>  >     overlays fonctionnent).
>  >   *
>  >     Pourtant, au démarrage le logo n'est pas affiché par U-Boot (écran
>  >     noir).
> 
> Je peux voir les logs U-Boot, svp ?
> 
>  >   *
>  >     De plus, le logo affiché par le noyau est celui de la screenboard
>  >     3.5 alors que j'ai modifié le defconfig...
> 
> Avez-vous recompilé le kernel ?
> 
> make linux-rebuild
> 
> Cordialement,
> 
>  >   *
>  >     Les paramètres splash* de U-Boot sont les mêmes que sur la version
>  >     fonctionnelle sur screenboard 3.5.
>  >
>  > Avez-vous des pistes ?
>  > Cordialement,
>  >
>  > Hubert CHAUMETTE
>  > ------------------------------------------------------------------------
>  > *De :* Hubert CHAUMETTE <hubert.c@abioexpertise.com>
>  > *Envoyé :* lundi 4 novembre 2024 09:29
>  > *À :* Sébastien Szymanski <sebastien.szymanski@armadeus.com>
>  > *Objet :* RE: Prise de contact
>  > Bonjour Sébastien,
>  >
>  > J'ai regardé pour adapter le splashscreen U-Boot à l'écran 7 pouces, je
>  > ne parviens pas à reproduire le format de la bitmap (sRGB 8bits je
>  > crois). Comment faites-vous pour générer une image au bon format ?
>  > Cordialement,
>  >
>  > Hubert CHAUMETTE
>  > ------------------------------------------------------------------------
>  > *De :* Sébastien Szymanski <sebastien.szymanski@armadeus.com>
>  > *Envoyé :* lundi 28 octobre 2024 11:43
>  > *À :* Hubert CHAUMETTE <hubert.c@abioexpertise.com>
>  > *Cc :* Stéphane BONILLA <stephane.b@abioexpertise.com>
>  > *Objet :* Re: Prise de contact
>  > Bonjour,
>  >
>  > On 10/28/24 11:33, Hubert CHAUMETTE wrote:
>  >> Bonjour Sébastien,
>  >> Je prends la suite de Johan pour le suivi de notre collaboration, en
>  >> tant qu'Architect Logiciel chez Alliance Bio Expertise.
>  >> Si j'ai bien compris, c'est à vous que nous devons le BSP buildroot pour
>  >> nos screenboards 3.5 et 7 ?
>  >
>  > Oui, c'est bien moi.
>  >
>  > Cordialement,
>  >
>  >> Cordialement,
>  >> Hubert CHAUMETTE
>  >>
>  >
>  >
>  > --
>  > Sébastien Szymanski, Armadeus Systems
>  > Software engineer
> 
> 
> --
> Sébastien Szymanski, Armadeus Systems
> Software engineer


-- 
Sébastien Szymanski, Armadeus Systems
Software engineer

